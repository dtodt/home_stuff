import { Module } from '@nestjs/common';
import { AuthModule } from './auth/auth.module';
import { CommonModule } from './common/common.module';
import { CategoriesModule } from './categories/categories.module';
import { ThingsModule } from './things/things.module';

@Module({
  imports: [CommonModule, AuthModule, CategoriesModule, ThingsModule],
})
export class AppModule {}
