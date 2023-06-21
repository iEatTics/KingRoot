.class Lcom/kingroot/kinguser/bet$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bet;->oI()V
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
    .line 93
    iput-object p1, p0, Lcom/kingroot/kinguser/bet$2;->blE:Lcom/kingroot/kinguser/bet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188bb

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 98
    invoke-static {}, Lcom/kingroot/kinguser/aft;->vt()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/DeviceActivity;->aL(Landroid/content/Context;)V

    .line 99
    return-void
.end method
