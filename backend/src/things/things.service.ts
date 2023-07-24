import { Prisma } from '.prisma/client';
import { PrismaService } from '@common/prisma/prisma.service';
import { Injectable } from '@nestjs/common';

@Injectable()
export class ThingsService {
  constructor(private readonly prisma: PrismaService) {}

  create(dto: Prisma.ThingCreateInput) {
    return this.prisma.thing.create({
      data: dto,
    });
  }

  findAll() {
    return this.prisma.thing.findMany();
  }

  findOne(id: number) {
    return this.prisma.thing.findFirst({
      where: {
        id: id,
      },
    });
  }

  update(id: number, dto: Prisma.ThingUpdateInput) {
    return this.prisma.thing.update({
      data: dto,
      where: {
        id: id,
      },
    });
  }

  remove(id: number) {
    return this.prisma.thing.delete({
      where: {
        id: id,
      },
    });
  }
}
