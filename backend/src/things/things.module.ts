import { CommonModule } from '@common/common.module';
import { Module } from '@nestjs/common';

import { AuthModule } from 'src/auth/auth.module';
import { ThingsController } from './things.controller';
import { ThingsService } from './things.service';

@Module({
  controllers: [ThingsController],
  imports: [CommonModule, AuthModule],
  providers: [ThingsService],
})
export class ThingsModule {}
