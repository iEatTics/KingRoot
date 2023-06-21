.class Lcom/kingroot/kinguser/ber$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aic$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ber;->r(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blx:Lcom/kingroot/kinguser/ber;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ber;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/kingroot/kinguser/ber$4;->blx:Lcom/kingroot/kinguser/ber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dv(I)Z
    .locals 2

    .prologue
    .line 118
    packed-switch p1, :pswitch_data_0

    .line 129
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 120
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/bhq;->acE()Lcom/kingroot/kinguser/bhq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bhq;->iR(I)Z

    move-result v0

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
