.class Lcom/kingroot/kinguser/alp$12;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp;->a(Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReqSuggWordListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ayF:Ljava/lang/String;

.field final synthetic ayG:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReqSuggWordListener;

.field final synthetic ayh:Lcom/kingroot/kinguser/alp;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReqSuggWordListener;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$12;->ayh:Lcom/kingroot/kinguser/alp;

    iput-object p2, p0, Lcom/kingroot/kinguser/alp$12;->ayF:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/alp$12;->ayG:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReqSuggWordListener;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 170
    invoke-static {}, Lcom/kingroot/kinguser/btx;->aid()Lcom/kingroot/kinguser/btx;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/alp$12;->ayF:Ljava/lang/String;

    new-instance v2, Lcom/kingroot/kinguser/alp$12$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/alp$12$1;-><init>(Lcom/kingroot/kinguser/alp$12;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/btx;->a(Ljava/lang/String;Lcom/kingroot/kinguser/bud;)V

    .line 182
    return-void
.end method
