.class final Lcom/kingroot/kinguser/gc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/fq;


# instance fields
.field final synthetic ql:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/kingroot/kinguser/gc;->ql:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v1, Lcom/kingroot/kinguser/gd;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/gd;-><init>(Lcom/kingroot/kinguser/gc;Ljava/util/List;)V

    invoke-static {p1, v1}, Lcom/kingroot/kinguser/fo;->a(Ljava/io/File;Lcom/kingroot/kinguser/fp;)V

    .line 116
    iget-object v1, p0, Lcom/kingroot/kinguser/gc;->ql:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    invoke-static {p1}, Lcom/kingroot/kinguser/fo;->a(Ljava/io/File;)V

    goto :goto_0
.end method
