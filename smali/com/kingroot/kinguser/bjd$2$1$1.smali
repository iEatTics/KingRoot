.class Lcom/kingroot/kinguser/bjd$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjd$2$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bwf:Lcom/kingroot/kinguser/bjd$2$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjd$2$1;)V
    .locals 0

    .prologue
    .line 975
    iput-object p1, p0, Lcom/kingroot/kinguser/bjd$2$1$1;->bwf:Lcom/kingroot/kinguser/bjd$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$2$1$1;->bwf:Lcom/kingroot/kinguser/bjd$2$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjd$2$1;->bwe:Lcom/kingroot/kinguser/bjd$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjd$2;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjd;->b(Lcom/kingroot/kinguser/bjd;)V

    .line 980
    return-void
.end method
