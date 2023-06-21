.class Lcom/kingroot/kinguser/alp$10;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp;->a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aye:I

.field final synthetic ayg:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

.field final synthetic ayh:Lcom/kingroot/kinguser/alp;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp;ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$10;->ayh:Lcom/kingroot/kinguser/alp;

    iput p2, p0, Lcom/kingroot/kinguser/alp$10;->aye:I

    iput-object p3, p0, Lcom/kingroot/kinguser/alp$10;->ayg:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 114
    invoke-static {}, Lcom/kingroot/kinguser/btx;->aid()Lcom/kingroot/kinguser/btx;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/alp$10;->aye:I

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/kingroot/kinguser/alp$10$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/alp$10$1;-><init>(Lcom/kingroot/kinguser/alp$10;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/btx;->a(IJLcom/kingroot/kinguser/bun;)V

    .line 126
    return-void
.end method
