.class Lcom/kingroot/kinguser/alt$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alt;->Hl()Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
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
        "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/alt;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alt;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/kingroot/kinguser/alt$3;->this$0:Lcom/kingroot/kinguser/alt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)I
    .locals 2

    .prologue
    .line 97
    iget v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->position:I

    iget v1, p2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 94
    check-cast p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    check-cast p2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/alt$3;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)I

    move-result v0

    return v0
.end method
