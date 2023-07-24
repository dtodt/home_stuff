import { CommonModule } from '@common/common.module';
import { Module } from '@nestjs/common';

import { CategoriesController } from './categories.controller';
import { CategoriesService } from './categories.service';

@Module({
  controllers: [CategoriesController],
  imports: [CommonModule],
  providers: [CategoriesService],
})
export class CategoriesModule {}
