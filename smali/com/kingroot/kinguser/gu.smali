.class public Lcom/kingroot/kinguser/gu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final qC:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/gu;->qC:Ljava/util/Collection;

    return-void
.end method

.method public static a(Ljava/util/Collection;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 26
    invoke-static {p0}, Lcom/kingroot/kinguser/gu;->b(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 50
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
