.class Lcom/kingroot/kinguser/tw$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/tw;->d(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HP:Landroid/content/Intent;

.field final synthetic HQ:Lcom/kingroot/kinguser/tw;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/tw;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/kingroot/kinguser/tw$2;->HQ:Lcom/kingroot/kinguser/tw;

    iput-object p2, p0, Lcom/kingroot/kinguser/tw$2;->HP:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/tw$2;->HP:Landroid/content/Intent;

    const-string v1, "extra_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/tw$2;->HP:Landroid/content/Intent;

    const-string v2, "extra_proc_flag"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/tw$2;->HP:Landroid/content/Intent;

    const-string v3, "extra_proc_id"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 182
    iget-object v0, p0, Lcom/kingroot/kinguser/tw$2;->HP:Landroid/content/Intent;

    const-string v4, "extra_task_tag"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/tw$2;->HP:Landroid/content/Intent;

    const-string v5, "extra_task_start_time"

    const-wide/16 v6, -0x1

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 184
    invoke-static {}, Lcom/kingroot/kinguser/tw;->ki()Lcom/kingroot/kinguser/tv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hU()Lcom/kingroot/kinguser/rh;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    instance-of v5, v0, Lcom/kingroot/kinguser/rg;

    if-eqz v5, :cond_0

    .line 188
    check-cast v0, Lcom/kingroot/kinguser/rg;

    .line 189
    invoke-virtual {v0}, Lcom/kingroot/kinguser/rg;->hO()Lcom/kingroot/kinguser/tv;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/tw;->a(Lcom/kingroot/kinguser/tv;)Lcom/kingroot/kinguser/tv;

    .line 194
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/tw;->ki()Lcom/kingroot/kinguser/tv;

    move-result-object v0

    if-nez v0, :cond_1

    .line 281
    :goto_0
    return-void

    .line 198
    :cond_1
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 200
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/tw;->ki()Lcom/kingroot/kinguser/tv;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lcom/kingroot/kinguser/tv;->u(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 279
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/kingroot/common/app/KApplication;->a(Ljava/lang/Throwable;Ljava/lang/String;[B)V

    goto :goto_0

    .line 204
    :pswitch_2
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/tw;->ki()Lcom/kingroot/kinguser/tv;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lcom/kingroot/kinguser/tv;->v(II)V

    goto :goto_0

    .line 208
    :pswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/tw$2;->HP:Landroid/content/Intent;

    const-string v1, "extra_proc_live_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 209
    iget-object v0, p0, Lcom/kingroot/kinguser/tw$2;->HP:Landroid/content/Intent;

    const-string v1, "extra_proc_is_exit"

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 210
    invoke-static {}, Lcom/kingroot/kinguser/tw;->ki()Lcom/kingroot/kinguser/tv;

    move-result-object v1

    invoke-interface/range {v1 .. v6}, Lcom/kingroot/kinguser/tv;->a(IIJZ)V

    goto :goto_0

    .line 215
    :pswitch_4
    iget-object v0, p0, Lcom/kingroot/kinguser/tw$2;->HP:Landroid/content/Intent;

    const-string v1, "extra_task_tag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/tw$2;->HP:Landroid/content/Intent;

    const-string v1, "extra_task_max_live_time"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 217
    invoke-static {}, Lcom/kingroot/kinguser/tw;->ki()Lcom/kingroot/kinguser/tv;

    move-result-object v1

    invoke-interface/range {v1 .. v6}, Lcom/kingroot/kinguser/tv;->a(IILjava/lang/String;J)V

    goto :goto_0

    .line 221
    :pswitch_5
    iget-object v0, p0, Lcom/kingroot/kinguser/tw$2;->HP:Landroid/content/Intent;

    const-string v1, "extra_main_start_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 222
    invoke-static {}, Lcom/kingroot/kinguser/tw;->ki()Lcom/kingroot/kinguser/tv;

    move-result-object v4

    invoke-interface {v4, v2, v3, v0, v1}, Lcom/kingroot/kinguser/tv;->b(IIJ)V

    goto :goto_0

    .line 226
    :pswitch_6
    iget-object v0, p0, Lcom/kingroot/kinguser/tw$2;->HP:Landroid/content/Intent;

    const-string v1, "extra_main_first_start_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 227
    invoke-static {}, Lcom/kingroot/kinguser/tw;->ki()Lcom/kingroot/kinguser/tv;

    move-result-object v4

    invoke-interface {v4, v2, v3, v0, v1}, Lcom/kingroot/kinguser/tv;->c(IIJ)V

    goto :goto_0

    .line 231
    :pswitch_7
    iget-object v0, p0, Lcom/kingroot/kinguser/tw$2;->HP:Landroid/content/Intent;

    const-string v1, "extra_thread_peak_size"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 232
    invoke-static {}, Lcom/kingroot/kinguser/tw;->ki()Lcom/kingroot/kinguser/tv;

    move-result-object v1

    invoke-interface {v1, v2, v3, v0}, Lcom/kingroot/kinguser/tv;->d(III)V

    goto/16 :goto_0

    .line 236
    :pswitch_8
    iget-object v0, p0, Lcom/kingroot/kinguser/tw$2;->HP:Landroid/content/Intent;

    const-string v1, "extra_service_run_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 237
    invoke-static {}, Lcom/kingroot/kinguser/tw;->ki()Lcom/kingroot/kinguser/tv;

    move-result-object v4

    invoke-interface {v4, v2, v3, v0, v1}, Lcom/kingroot/kinguser/tv;->d(IIJ)V

    goto/16 :goto_0

    .line 241
    :pswitch_9
    iget-object v0, p0, Lcom/kingroot/kinguser/tw$2;->HP:Landroid/content/Intent;

    const-string v1, "extra_service_pss"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 242
    invoke-static {}, Lcom/kingroot/kinguser/tw;->ki()Lcom/kingroot/kinguser/tv;

    move-result-object v4

    invoke-interface {v4, v2, v3, v0, v1}, Lcom/kingroot/kinguser/tv;->e(IIJ)V

    goto/16 :goto_0

    .line 246
    :pswitch_a
    iget-object v0, p0, Lcom/kingroot/kinguser/tw$2;->HP:Landroid/content/Intent;

    const-string v1, "extra_cpu_rate"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    .line 247
    invoke-static {}, Lcom/kingroot/kinguser/tw;->ki()Lcom/kingroot/kinguser/tv;

    move-result-object v4

    invoke-interface {v4, v2, v3, v0, v1}, Lcom/kingroot/kinguser/tv;->a(IID)V

    goto/16 :goto_0

    .line 251
    :pswitch_b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/common/utils/system/ProcessUtils;->cc(I)Lcom/kingroot/common/utils/system/ProcessUtils$a;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/tw;->b(Lcom/kingroot/common/utils/system/ProcessUtils$a;)Lcom/kingroot/common/utils/system/ProcessUtils$a;

    .line 252
    invoke-static {}, Lcom/kingroot/kinguser/aat;->pX()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/tw;->x(J)J

    .line 253
    invoke-static {}, Lcom/kingroot/kinguser/tw;->kk()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/tw;->kj()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 258
    :pswitch_c
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kingroot/kinguser/tw;->b(Lcom/kingroot/common/utils/system/ProcessUtils$a;)Lcom/kingroot/common/utils/system/ProcessUtils$a;

    .line 259
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kingroot/kinguser/tw;->a(Lcom/kingroot/common/utils/system/ProcessUtils$a;)Lcom/kingroot/common/utils/system/ProcessUtils$a;

    .line 260
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/tw;->x(J)J

    .line 261
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/tw;->w(J)J

    .line 262
    invoke-static {}, Lcom/kingroot/kinguser/tw;->kk()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/tw;->kj()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 267
    :pswitch_d
    invoke-static {}, Lcom/kingroot/kinguser/tw;->ki()Lcom/kingroot/kinguser/tv;

    move-result-object v0

    invoke-interface {v0, v4, v3, v6, v7}, Lcom/kingroot/kinguser/tv;->b(Ljava/lang/String;IJ)V

    goto/16 :goto_0

    .line 271
    :pswitch_e
    invoke-static {}, Lcom/kingroot/kinguser/tw;->ki()Lcom/kingroot/kinguser/tv;

    move-result-object v0

    invoke-interface {v0, v4, v3, v6, v7}, Lcom/kingroot/kinguser/tv;->c(Ljava/lang/String;IJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method
