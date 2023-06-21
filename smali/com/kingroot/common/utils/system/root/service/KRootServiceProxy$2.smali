.class public Lcom/kingroot/common/utils/system/root/service/KRootServiceProxy$2;
.super Lcom/kingroot/common/utils/system/root/service/IKRootCallBack$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/acl;->a(Lcom/kingroot/kinguser/cbw$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/acl;

.field final synthetic val$callBack:Lcom/kingroot/kinguser/cbw$a;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/acl;Lcom/kingroot/kinguser/cbw$a;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/kingroot/common/utils/system/root/service/KRootServiceProxy$2;->this$0:Lcom/kingroot/kinguser/acl;

    iput-object p2, p0, Lcom/kingroot/common/utils/system/root/service/KRootServiceProxy$2;->val$callBack:Lcom/kingroot/kinguser/cbw$a;

    invoke-direct {p0}, Lcom/kingroot/common/utils/system/root/service/IKRootCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppyResult(Z)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/common/utils/system/root/service/KRootServiceProxy$2;->val$callBack:Lcom/kingroot/kinguser/cbw$a;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/cbw$a;->ad(Z)V

    .line 50
    return-void
.end method
