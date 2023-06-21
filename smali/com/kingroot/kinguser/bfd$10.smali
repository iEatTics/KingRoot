.class Lcom/kingroot/kinguser/bfd$10;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bfd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfd;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const v2, 0x7f07035e

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    :pswitch_0
    return-void

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->d(Lcom/kingroot/kinguser/bfd;)V

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->e(Lcom/kingroot/kinguser/bfd;)V

    goto :goto_0

    .line 128
    :pswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;I)V

    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;Z)V

    goto :goto_0

    .line 133
    :pswitch_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bfd;->b(Lcom/kingroot/kinguser/bfd;I)V

    goto :goto_0

    .line 137
    :pswitch_5
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->f(Lcom/kingroot/kinguser/bfd;)V

    .line 138
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->S(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->d(Lcom/kingroot/kinguser/bfd;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfd;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    iget-object v2, v2, Lcom/kingroot/kinguser/bfd;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v2, v2, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->mainTitle:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    :pswitch_6
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->f(Lcom/kingroot/kinguser/bfd;)V

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfd;->mContext:Landroid/content/Context;

    const v1, 0x7f07035d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    :pswitch_7
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->f(Lcom/kingroot/kinguser/bfd;)V

    goto :goto_0

    .line 155
    :pswitch_8
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;Z)V

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->g(Lcom/kingroot/kinguser/bfd;)V

    goto :goto_0

    .line 160
    :pswitch_9
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->h(Lcom/kingroot/kinguser/bfd;)V

    goto :goto_0

    .line 164
    :pswitch_a
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->f(Lcom/kingroot/kinguser/bfd;)V

    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfd;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    iget-object v2, v2, Lcom/kingroot/kinguser/bfd;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v2, v2, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->mainTitle:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 172
    :pswitch_b
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->i(Lcom/kingroot/kinguser/bfd;)V

    goto/16 :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method
