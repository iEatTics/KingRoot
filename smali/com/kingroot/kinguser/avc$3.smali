.class Lcom/kingroot/kinguser/avc$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/avc;->HT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aTn:Lcom/kingroot/kinguser/avc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/avc;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/kingroot/kinguser/avc$3;->aTn:Lcom/kingroot/kinguser/avc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/kingroot/kinguser/avc$3;->aTn:Lcom/kingroot/kinguser/avc;

    invoke-static {v0}, Lcom/kingroot/kinguser/avc;->b(Lcom/kingroot/kinguser/avc;)V

    .line 257
    iget-object v0, p0, Lcom/kingroot/kinguser/avc$3;->aTn:Lcom/kingroot/kinguser/avc;

    invoke-static {v0}, Lcom/kingroot/kinguser/avc;->c(Lcom/kingroot/kinguser/avc;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/avc$3;->aTn:Lcom/kingroot/kinguser/avc;

    invoke-static {v1}, Lcom/kingroot/kinguser/avc;->d(Lcom/kingroot/kinguser/avc;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/sq;->a(Ljava/lang/Object;Ljava/io/File;)V

    .line 258
    return-void
.end method
