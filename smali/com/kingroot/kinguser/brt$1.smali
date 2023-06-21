.class Lcom/kingroot/kinguser/brt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/brt;->a(Landroid/view/View;Lcom/tencent/qqpim/discovery/AdDisplayModel;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bKZ:Lcom/kingroot/kinguser/brt;

.field private final synthetic bLa:Lcom/tencent/qqpim/discovery/AdDisplayModel;

.field private final synthetic bLb:Landroid/os/Bundle;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/brt;Landroid/view/View;Lcom/tencent/qqpim/discovery/AdDisplayModel;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/brt$1;->bKZ:Lcom/kingroot/kinguser/brt;

    iput-object p2, p0, Lcom/kingroot/kinguser/brt$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/kingroot/kinguser/brt$1;->bLa:Lcom/tencent/qqpim/discovery/AdDisplayModel;

    iput-object p4, p0, Lcom/kingroot/kinguser/brt$1;->bLb:Landroid/os/Bundle;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/brt$1;->bKZ:Lcom/kingroot/kinguser/brt;

    iget-object v1, p0, Lcom/kingroot/kinguser/brt$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/kingroot/kinguser/brt$1;->bLa:Lcom/tencent/qqpim/discovery/AdDisplayModel;

    iget-object v3, p0, Lcom/kingroot/kinguser/brt$1;->bLb:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/brt;->a(Lcom/kingroot/kinguser/brt;Landroid/view/View;Lcom/tencent/qqpim/discovery/AdDisplayModel;Landroid/os/Bundle;)V

    .line 111
    return-void
.end method
