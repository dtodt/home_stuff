import { Prisma } from '.prisma/client';
import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';

import { ThingsService } from './things.service';

@Controller('things')
export class ThingsController {
  constructor(private readonly thingsService: ThingsService) {}

  @Post()
  create(@Body() dto: Prisma.ThingCreateInput) {
    return this.thingsService.create(dto);
  }

  @Get()
  findAll() {
    return this.thingsService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.thingsService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() dto: Prisma.ThingUpdateInput) {
    return this.thingsService.update(+id, dto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.thingsService.remove(+id);
  }
}
