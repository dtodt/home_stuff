import { CommonModule } from '@common/common.module';
import { Module } from '@nestjs/common';

import { ThingsController } from './things.controller';
import { ThingsService } from './things.service';

@Module({
  controllers: [ThingsController],
  imports: [CommonModule],
  providers: [ThingsService],
})
export class ThingsModule {}
