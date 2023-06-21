.class public final Lcom/king/uranus/d;
.super Lcom/king/uranus/cS;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static xt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/king/uranus/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/king/uranus/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/king/uranus/d;->g:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/king/uranus/d;->xt:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/king/uranus/d;->xt:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Lcom/king/uranus/f;

    invoke-direct {v0}, Lcom/king/uranus/f;-><init>()V

    .line 31
    sget-object v1, Lcom/king/uranus/d;->xt:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    sget-object v0, Lcom/king/uranus/d;->xt:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->d(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/king/uranus/d;->g:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/king/uranus/d;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a(Ljava/util/Collection;I)V

    .line 24
    return-void
.end method

.method public a(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
