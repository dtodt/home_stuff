import { Prisma } from '.prisma/client';
import { PrismaService } from '@common/prisma/prisma.service';
import { Injectable } from '@nestjs/common';

@Injectable()
export class CategoriesService {
  constructor(private readonly prisma: PrismaService) {}

  create(dto: Prisma.CategoryCreateInput) {
    return this.prisma.category.create({
      data: dto,
    });
  }

  findAll() {
    return this.prisma.category.findMany();
  }

  findOne(id: number) {
    return this.prisma.category.findFirst({
      where: {
        id: id,
      },
    });
  }

  update(id: number, dto: Prisma.CategoryUpdateInput) {
    return this.prisma.category.update({
      data: dto,
      where: {
        id: id,
      },
    });
  }

  remove(id: number) {
    return this.prisma.category.delete({
      where: {
        id: id,
      },
    });
  }
}
