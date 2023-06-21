.class Lcom/kingroot/kinguser/pn;
.super Lcom/kingroot/kinguser/bzr;
.source "SourceFile"


# instance fields
.field final synthetic yF:Lcom/kingroot/kinguser/cbe;

.field final synthetic yN:Landroid/support/v4/app/NotificationCompat$Builder;

.field final synthetic yP:Lcom/kingroot/kinguser/ad;

.field final synthetic yQ:Lcom/kingroot/kinguser/x;

.field final synthetic yR:Ljava/lang/String;

.field final synthetic yS:Ljava/lang/String;

.field final synthetic yT:Ljava/lang/String;

.field final synthetic yU:Lcom/kingroot/kinguser/pk;

.field final synthetic yW:Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

.field final synthetic yr:Lcom/kingroot/kinguser/u;

.field final synthetic yu:Landroid/content/Context;

.field final synthetic yv:Lcom/kingroot/kinguser/pv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/pk;Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$BigPictureStyle;Landroid/content/Context;Lcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/kingroot/kinguser/pn;->yU:Lcom/kingroot/kinguser/pk;

    iput-object p2, p0, Lcom/kingroot/kinguser/pn;->yT:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/pn;->yN:Landroid/support/v4/app/NotificationCompat$Builder;

    iput-object p4, p0, Lcom/kingroot/kinguser/pn;->yR:Ljava/lang/String;

    iput-object p5, p0, Lcom/kingroot/kinguser/pn;->yS:Ljava/lang/String;

    iput-object p6, p0, Lcom/kingroot/kinguser/pn;->yW:Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    iput-object p7, p0, Lcom/kingroot/kinguser/pn;->yu:Landroid/content/Context;

    iput-object p8, p0, Lcom/kingroot/kinguser/pn;->yr:Lcom/kingroot/kinguser/u;

    iput-object p9, p0, Lcom/kingroot/kinguser/pn;->yQ:Lcom/kingroot/kinguser/x;

    iput-object p10, p0, Lcom/kingroot/kinguser/pn;->yP:Lcom/kingroot/kinguser/ad;

    iput-object p11, p0, Lcom/kingroot/kinguser/pn;->yv:Lcom/kingroot/kinguser/pv;

    iput-object p12, p0, Lcom/kingroot/kinguser/pn;->yF:Lcom/kingroot/kinguser/cbe;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bzr;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/pn;->yT:Ljava/lang/String;

    new-instance v1, Lcom/kingroot/kinguser/po;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/po;-><init>(Lcom/kingroot/kinguser/pn;)V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/pj;->a(Ljava/lang/String;Lcom/kingroot/kinguser/pj$a;)V

    .line 179
    return-void
.end method
