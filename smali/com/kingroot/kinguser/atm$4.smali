.class Lcom/kingroot/kinguser/atm$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atm;->a(Landroid/os/Message;)V
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
.field final synthetic this$0:Lcom/kingroot/kinguser/atm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/kingroot/kinguser/atm$4;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)I
    .locals 2

    .prologue
    .line 637
    iget v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->position:I

    iget v1, p2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->position:I

    if-ge v0, v1, :cond_0

    .line 638
    const/4 v0, -0x1

    .line 642
    :goto_0
    return v0

    .line 639
    :cond_0
    iget v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->position:I

    iget v1, p2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->position:I

    if-le v0, v1, :cond_1

    .line 640
    const/4 v0, 0x1

    goto :goto_0

    .line 642
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 634
    check-cast p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    check-cast p2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/atm$4;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)I

    move-result v0

    return v0
.end method
