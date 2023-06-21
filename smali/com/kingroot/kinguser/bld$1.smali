.class Lcom/kingroot/kinguser/bld$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bld;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bzG:Lcom/kingroot/kinguser/bld;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bld;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/kingroot/kinguser/bld$1;->bzG:Lcom/kingroot/kinguser/bld;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 168
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ahl;->o(IZ)V

    .line 169
    return-void
.end method
