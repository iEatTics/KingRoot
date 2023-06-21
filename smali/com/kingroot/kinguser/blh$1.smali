.class Lcom/kingroot/kinguser/blh$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/blh;->afj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bzN:Lcom/kingroot/kinguser/blh;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/blh;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/kingroot/kinguser/blh$1;->bzN:Lcom/kingroot/kinguser/blh;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/baw;->VY()V

    .line 58
    return-void
.end method
