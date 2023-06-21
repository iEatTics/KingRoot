.class Lcom/kingroot/kinguser/bet$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aib$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bet;->r(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blE:Lcom/kingroot/kinguser/bet;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bet;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/kingroot/kinguser/bet$4;->blE:Lcom/kingroot/kinguser/bet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dv(I)Z
    .locals 2

    .prologue
    .line 160
    packed-switch p1, :pswitch_data_0

    .line 171
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 162
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/bhv;->acN()Lcom/kingroot/kinguser/bhv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bhv;->iR(I)Z

    move-result v0

    goto :goto_0

    .line 168
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/bhv;->acN()Lcom/kingroot/kinguser/bhv;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bhv;->iR(I)Z

    move-result v0

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
