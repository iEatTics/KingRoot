.class Lcom/kingroot/kinguser/alz$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alz;->HT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic azw:Lcom/kingroot/kinguser/alz;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alz;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/kingroot/kinguser/alz$2;->azw:Lcom/kingroot/kinguser/alz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/alz$2;->azw:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/alz$2;->azw:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/alz;->Ha()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/sq;->a(Ljava/lang/Object;Ljava/io/File;)V

    .line 93
    return-void
.end method
