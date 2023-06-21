.class Lcom/kingroot/kinguser/axj$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axj$5;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aZl:Lcom/kingroot/kinguser/axj$5;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axj$5;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/kingroot/kinguser/axj$5$1;->aZl:Lcom/kingroot/kinguser/axj$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/axj$5$1;->aZl:Lcom/kingroot/kinguser/axj$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/axj$5;->aZj:Lcom/kingroot/kinguser/axj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/axj;->onPageSelected(I)V

    .line 199
    return-void
.end method
