import { CommonModule } from '@common/common.module';
import { Module } from '@nestjs/common';

import { AuthModule } from 'src/auth/auth.module';
import { CategoriesController } from './categories.controller';
import { CategoriesService } from './categories.service';

@Module({
  controllers: [CategoriesController],
  imports: [CommonModule, AuthModule],
  providers: [CategoriesService],
})
export class CategoriesModule {}
