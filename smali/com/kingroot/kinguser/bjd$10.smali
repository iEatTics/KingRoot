.class Lcom/kingroot/kinguser/bjd$10;
.super Lcom/kingroot/kinguser/px;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjd;->a(Landroid/view/View;FFFFLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bwa:Lcom/kingroot/kinguser/bjd;

.field final synthetic bwq:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjd;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/kingroot/kinguser/bjd$10;->bwa:Lcom/kingroot/kinguser/bjd;

    iput-object p2, p0, Lcom/kingroot/kinguser/bjd$10;->bwq:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/kingroot/kinguser/px;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$10;->bwq:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 795
    return-void
.end method
