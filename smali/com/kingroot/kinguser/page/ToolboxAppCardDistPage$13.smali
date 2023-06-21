.class public Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$13;
.super Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ayb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ayb;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ayb;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$13;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onState(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 614
    packed-switch p2, :pswitch_data_0

    .line 632
    :goto_0
    :pswitch_0
    return-void

    .line 618
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$13;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayb;->j(Lcom/kingroot/kinguser/ayb;)V

    .line 619
    iget-object v0, p0, Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$13;->this$0:Lcom/kingroot/kinguser/ayb;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ayb;->a(Lcom/kingroot/kinguser/ayb;I)V

    goto :goto_0

    .line 628
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$13;->this$0:Lcom/kingroot/kinguser/ayb;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ayb;->a(Lcom/kingroot/kinguser/ayb;I)V

    .line 629
    iget-object v0, p0, Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$13;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayb;->i(Lcom/kingroot/kinguser/ayb;)V

    goto :goto_0

    .line 614
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
