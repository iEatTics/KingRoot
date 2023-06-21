.class Lcom/kingroot/kinguser/bjd$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjd$3$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bwi:Lcom/kingroot/kinguser/bjd$3$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjd$3$1;)V
    .locals 0

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/kingroot/kinguser/bjd$3$1$1;->bwi:Lcom/kingroot/kinguser/bjd$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$3$1$1;->bwi:Lcom/kingroot/kinguser/bjd$3$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjd$3$1;->bwh:Lcom/kingroot/kinguser/bjd$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjd$3;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjd;->b(Lcom/kingroot/kinguser/bjd;)V

    .line 1055
    return-void
.end method
