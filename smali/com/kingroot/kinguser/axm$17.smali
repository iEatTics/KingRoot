.class Lcom/kingroot/kinguser/axm$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm;->n(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ayI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

.field final synthetic this$0:Lcom/kingroot/kinguser/axm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    .locals 0

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$17;->this$0:Lcom/kingroot/kinguser/axm;

    iput-object p2, p0, Lcom/kingroot/kinguser/axm$17;->ayI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 1364
    new-instance v0, Lcom/kingroot/kinguser/axm$17$1;

    invoke-direct {v0, p0, p2}, Lcom/kingroot/kinguser/axm$17$1;-><init>(Lcom/kingroot/kinguser/axm$17;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1393
    return-void
.end method

.method public eE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1398
    return-void
.end method
