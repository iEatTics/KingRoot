.class Lcom/kingroot/kinguser/pl;
.super Lcom/kingroot/kinguser/bzr;
.source "SourceFile"


# instance fields
.field final synthetic yF:Lcom/kingroot/kinguser/cbe;

.field final synthetic yM:Ljava/lang/String;

.field final synthetic yN:Landroid/support/v4/app/NotificationCompat$Builder;

.field final synthetic yO:I

.field final synthetic yP:Lcom/kingroot/kinguser/ad;

.field final synthetic yQ:Lcom/kingroot/kinguser/x;

.field final synthetic yR:Ljava/lang/String;

.field final synthetic yS:Ljava/lang/String;

.field final synthetic yT:Ljava/lang/String;

.field final synthetic yU:Lcom/kingroot/kinguser/pk;

.field final synthetic yr:Lcom/kingroot/kinguser/u;

.field final synthetic yu:Landroid/content/Context;

.field final synthetic yv:Lcom/kingroot/kinguser/pv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/pk;Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$Builder;ILandroid/content/Context;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/kingroot/kinguser/pl;->yU:Lcom/kingroot/kinguser/pk;

    iput-object p2, p0, Lcom/kingroot/kinguser/pl;->yM:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/pl;->yN:Landroid/support/v4/app/NotificationCompat$Builder;

    iput p4, p0, Lcom/kingroot/kinguser/pl;->yO:I

    iput-object p5, p0, Lcom/kingroot/kinguser/pl;->yu:Landroid/content/Context;

    iput-object p6, p0, Lcom/kingroot/kinguser/pl;->yP:Lcom/kingroot/kinguser/ad;

    iput-object p7, p0, Lcom/kingroot/kinguser/pl;->yQ:Lcom/kingroot/kinguser/x;

    iput-object p8, p0, Lcom/kingroot/kinguser/pl;->yr:Lcom/kingroot/kinguser/u;

    iput-object p9, p0, Lcom/kingroot/kinguser/pl;->yR:Ljava/lang/String;

    iput-object p10, p0, Lcom/kingroot/kinguser/pl;->yS:Ljava/lang/String;

    iput-object p11, p0, Lcom/kingroot/kinguser/pl;->yT:Ljava/lang/String;

    iput-object p12, p0, Lcom/kingroot/kinguser/pl;->yv:Lcom/kingroot/kinguser/pv;

    iput-object p13, p0, Lcom/kingroot/kinguser/pl;->yF:Lcom/kingroot/kinguser/cbe;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bzr;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/pl;->yM:Ljava/lang/String;

    new-instance v1, Lcom/kingroot/kinguser/pm;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/pm;-><init>(Lcom/kingroot/kinguser/pl;)V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/pj;->a(Ljava/lang/String;Lcom/kingroot/kinguser/pj$a;)V

    .line 144
    return-void
.end method
