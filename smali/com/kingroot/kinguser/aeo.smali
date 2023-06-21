.class public Lcom/kingroot/kinguser/aeo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aeo$a;
    }
.end annotation


# instance fields
.field private afo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aeo$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aeo$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/kingroot/kinguser/aeo;->afo:Ljava/util/List;

    .line 10
    return-void
.end method


# virtual methods
.method public cO(I)[I
    .locals 3

    .prologue
    .line 31
    const/4 v2, 0x0

    .line 33
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aeo;->afo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/aeo;->afo:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aeo$a;

    iget v0, v0, Lcom/kingroot/kinguser/aeo$a;->id:I

    if-ne v0, p1, :cond_1

    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/aeo;->afo:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aeo$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/aeo$a;->afp:[I

    .line 40
    :goto_1
    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 44
    :cond_0
    return-object v0

    .line 33
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method
