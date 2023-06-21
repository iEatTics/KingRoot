.class Lcom/kingroot/kinguser/awv$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/awv;->bH(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingroot/kinguser/advance/model/AdvancePermModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aVI:Lcom/kingroot/kinguser/awv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awv;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/kingroot/kinguser/awv$3;->aVI:Lcom/kingroot/kinguser/awv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/advance/model/AdvancePermModel;Lcom/kingroot/kinguser/advance/model/AdvancePermModel;)I
    .locals 2

    .prologue
    .line 244
    iget v0, p1, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->type:I

    iget v1, p2, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->type:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 241
    check-cast p1, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    check-cast p2, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/awv$3;->a(Lcom/kingroot/kinguser/advance/model/AdvancePermModel;Lcom/kingroot/kinguser/advance/model/AdvancePermModel;)I

    move-result v0

    return v0
.end method
