.class Lcom/kingroot/kinguser/bet$1;
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
    .line 82
    iput-object p1, p0, Lcom/kingroot/kinguser/bet$1;->blE:Lcom/kingroot/kinguser/bet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/bet$1;->blE:Lcom/kingroot/kinguser/bet;

    iget-object v1, p0, Lcom/kingroot/kinguser/bet$1;->blE:Lcom/kingroot/kinguser/bet;

    invoke-static {v1}, Lcom/kingroot/kinguser/bet;->a(Lcom/kingroot/kinguser/bet;)Lcom/kingroot/common/utils/ui/ImageViewDot;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bet;->a(Lcom/kingroot/kinguser/bet;Landroid/view/View;)V

    .line 87
    return-void
.end method
