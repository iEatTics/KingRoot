.class Lcom/kingroot/kinguser/atl$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atl;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aOh:Lcom/kingroot/kinguser/atl;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atl;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->a(Lcom/kingroot/kinguser/atl;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/ast;->bd(Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/kingroot/kinguser/atl$1$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/atl$1$1;-><init>(Lcom/kingroot/kinguser/atl$1;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method
