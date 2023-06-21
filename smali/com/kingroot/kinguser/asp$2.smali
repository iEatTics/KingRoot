.class Lcom/kingroot/kinguser/asp$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/asp;->a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aNk:Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

.field final synthetic aNl:Lcom/kingroot/kinguser/asp;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/asp;Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/kingroot/kinguser/asp$2;->aNl:Lcom/kingroot/kinguser/asp;

    iput-object p2, p0, Lcom/kingroot/kinguser/asp$2;->aNk:Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 114
    iget-object v0, p0, Lcom/kingroot/kinguser/asp$2;->aNl:Lcom/kingroot/kinguser/asp;

    iget-object v1, p0, Lcom/kingroot/kinguser/asp$2;->aNk:Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/asp;->a(Lcom/kingroot/kinguser/asp;Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;)I

    .line 115
    return-void
.end method
