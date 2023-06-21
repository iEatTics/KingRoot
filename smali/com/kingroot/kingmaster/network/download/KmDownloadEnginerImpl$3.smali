.class Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic adO:Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;


# direct methods
.method constructor <init>(Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$3;->adO:Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 454
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 455
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$3;->adO:Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    invoke-static {v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->a(Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;)Z

    .line 456
    return-void
.end method
