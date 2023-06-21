.class Lcom/kingroot/kinguser/abc$3;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/abc;->a(Lcom/kingroot/kinguser/cbw$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic YS:Lcom/kingroot/kinguser/abc;

.field final synthetic val$callBack:Lcom/kingroot/kinguser/cbw$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/abc;Lcom/kingroot/kinguser/cbw$a;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/kingroot/kinguser/abc$3;->YS:Lcom/kingroot/kinguser/abc;

    iput-object p2, p0, Lcom/kingroot/kinguser/abc$3;->val$callBack:Lcom/kingroot/kinguser/cbw$a;

    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hW()Lcom/kingroot/kinguser/cbw;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/abc$3;->val$callBack:Lcom/kingroot/kinguser/cbw$a;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/cbw;->a(Lcom/kingroot/kinguser/cbw$a;)V

    .line 83
    return-void
.end method
