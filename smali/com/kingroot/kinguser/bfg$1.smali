.class Lcom/kingroot/kinguser/bfg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfg;->ZE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bms:Lcom/kingroot/kinguser/bfg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfg;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/kingroot/kinguser/bfg$1;->bms:Lcom/kingroot/kinguser/bfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/bfg$1;->bms:Lcom/kingroot/kinguser/bfg;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfg;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfg$1;->bms:Lcom/kingroot/kinguser/bfg;

    iget-object v1, v1, Lcom/kingroot/kinguser/bfg;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/atu;->t(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method
