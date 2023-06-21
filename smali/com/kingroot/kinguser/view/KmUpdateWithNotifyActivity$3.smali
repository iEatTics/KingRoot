.class Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const v4, 0x7f02014c

    const v3, 0x7f070183

    const/16 v1, 0x60

    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->a(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;I)I

    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 256
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->e(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V

    .line 261
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 262
    :cond_0
    return-void

    .line 197
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->c(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setBackgroundResource(I)V

    goto :goto_0

    .line 201
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->c(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setClickable(Z)V

    .line 202
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->c(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->d(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->c(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    const/high16 v2, 0x42c00000    # 96.0f

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgress(F)V

    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    iget-object v2, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->a(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;ILjava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->c(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setBackgroundResource(I)V

    .line 209
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->c(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgress(F)V

    goto :goto_0

    .line 213
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->e(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V

    goto :goto_0

    .line 221
    :pswitch_3
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ais;->yh()V

    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    goto :goto_0

    .line 231
    :pswitch_4
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->e(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V

    goto :goto_0

    .line 237
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/kingroot/common/network/download/CommonFileDownloadTaskInfo;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/common/network/download/CommonFileDownloadTaskInfo;

    iget v0, v0, Lcom/kingroot/common/network/download/CommonFileDownloadTaskInfo;->BH:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 244
    if-le v0, v1, :cond_2

    move v0, v1

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    iget-object v2, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->a(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 250
    :pswitch_6
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->f(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V

    goto/16 :goto_0

    .line 253
    :pswitch_7
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$3;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->g(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V

    goto/16 :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
