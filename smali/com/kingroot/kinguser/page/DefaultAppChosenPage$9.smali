.class public Lcom/kingroot/kinguser/page/DefaultAppChosenPage$9;
.super Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axd;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/axd;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$9;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onState(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 646
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 648
    const-string v1, "DefaultSetting"

    invoke-static {p1, v1}, Lcom/kingroot/kinguser/apd;->ap(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_0
    const/4 v1, 0x0

    .line 653
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 688
    :goto_0
    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$9;->this$0:Lcom/kingroot/kinguser/axd;

    iget-object v1, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$9;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v1}, Lcom/kingroot/kinguser/axd;->k(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/agd$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axd;->a(Lcom/kingroot/kinguser/axd;Lcom/kingroot/kinguser/agd$a;)V

    .line 691
    :cond_1
    return-void

    .line 656
    :pswitch_1
    const-string v1, "DefaultSetting"

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/apd;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 663
    :pswitch_2
    const-string v1, "DefaultSetting"

    invoke-static {p1, v1}, Lcom/kingroot/kinguser/apd;->aq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :pswitch_3
    const-string v2, "DefaultSetting"

    invoke-static {p1, v0, v2}, Lcom/kingroot/kinguser/apd;->e(Ljava/lang/String;ILjava/lang/String;)V

    move v0, v1

    .line 672
    goto :goto_0

    .line 675
    :pswitch_4
    const-string v0, "DefaultSetting"

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/apd;->ar(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 677
    goto :goto_0

    .line 681
    :pswitch_5
    const-string v0, "DefaultSetting"

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/apd;->ap(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 682
    goto :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
