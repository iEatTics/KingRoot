.class public Lcom/kingroot/kinguser/bci$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bci;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bci;)V
    .locals 1

    .prologue
    .line 115
    iput-object p1, p0, Lcom/kingroot/kinguser/bci$a;->this$0:Lcom/kingroot/kinguser/bci;

    .line 116
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 117
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const v3, 0x7f070182

    const/4 v2, 0x0

    .line 122
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$a;->this$0:Lcom/kingroot/kinguser/bci;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bci;->a(Lcom/kingroot/kinguser/bci;I)I

    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 194
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$a;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v0}, Lcom/kingroot/kinguser/bci;->e(Lcom/kingroot/kinguser/bci;)V

    .line 197
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 128
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$a;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v0}, Lcom/kingroot/kinguser/bci;->d(Lcom/kingroot/kinguser/bci;)Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    const v1, 0x7f02014c

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setBackgroundResource(I)V

    goto :goto_0

    .line 133
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$a;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v0}, Lcom/kingroot/kinguser/bci;->d(Lcom/kingroot/kinguser/bci;)Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setClickable(Z)V

    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$a;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v0}, Lcom/kingroot/kinguser/bci;->d(Lcom/kingroot/kinguser/bci;)Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bci$a;->this$0:Lcom/kingroot/kinguser/bci;

    const v2, 0x7f070293

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bci;->b(Lcom/kingroot/kinguser/bci;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :pswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$a;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v0}, Lcom/kingroot/kinguser/bci;->e(Lcom/kingroot/kinguser/bci;)V

    .line 143
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$a;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v0}, Lcom/kingroot/kinguser/bci;->a(Lcom/kingroot/kinguser/bci;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bci$a;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v1, v3}, Lcom/kingroot/kinguser/bci;->c(Lcom/kingroot/kinguser/bci;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 149
    :pswitch_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$a;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v0}, Lcom/kingroot/kinguser/bci;->e(Lcom/kingroot/kinguser/bci;)V

    .line 152
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ais;->yh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    goto :goto_0

    .line 161
    :pswitch_5
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$a;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v0}, Lcom/kingroot/kinguser/bci;->e(Lcom/kingroot/kinguser/bci;)V

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$a;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v0}, Lcom/kingroot/kinguser/bci;->a(Lcom/kingroot/kinguser/bci;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bci$a;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v1, v3}, Lcom/kingroot/kinguser/bci;->d(Lcom/kingroot/kinguser/bci;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 171
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/kingroot/common/network/download/CommonFileDownloadTaskInfo;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/common/network/download/CommonFileDownloadTaskInfo;

    iget v0, v0, Lcom/kingroot/common/network/download/CommonFileDownloadTaskInfo;->BH:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 178
    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 179
    const/16 v0, 0x63

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bci$a;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v1}, Lcom/kingroot/kinguser/bci;->d(Lcom/kingroot/kinguser/bci;)Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgress(F)V

    goto/16 :goto_0

    .line 185
    :pswitch_7
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$a;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v0}, Lcom/kingroot/kinguser/bci;->f(Lcom/kingroot/kinguser/bci;)V

    goto/16 :goto_0

    .line 188
    :pswitch_8
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$a;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v0}, Lcom/kingroot/kinguser/bci;->g(Lcom/kingroot/kinguser/bci;)V

    goto/16 :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
