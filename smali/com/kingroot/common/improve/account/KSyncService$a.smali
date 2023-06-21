.class Lcom/kingroot/common/improve/account/KSyncService$a;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/improve/account/KSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic IC:Lcom/kingroot/common/improve/account/KSyncService;


# direct methods
.method constructor <init>(Lcom/kingroot/common/improve/account/KSyncService;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kingroot/common/improve/account/KSyncService$a;->IC:Lcom/kingroot/common/improve/account/KSyncService;

    .line 77
    invoke-direct {p0, p2, p3}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 78
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method
