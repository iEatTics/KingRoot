.class final Lcom/kingroot/kinguser/adl$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/adl;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/adl;->jJ()V

    .line 47
    return-void
.end method
