.class Lcom/kingroot/kinguser/atp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atp;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aPL:Lcom/kingroot/kinguser/atp;

.field final synthetic avV:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atp;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/kingroot/kinguser/atp$1;->aPL:Lcom/kingroot/kinguser/atp;

    iput-object p2, p0, Lcom/kingroot/kinguser/atp$1;->avV:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/kingroot/kinguser/atp$1;->aPL:Lcom/kingroot/kinguser/atp;

    invoke-static {v0}, Lcom/kingroot/kinguser/atp;->a(Lcom/kingroot/kinguser/atp;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atp$1;->avV:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/atp$1;->avV:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/webview/WebViewActivity;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method
