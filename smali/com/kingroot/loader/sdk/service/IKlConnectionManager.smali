.class public interface abstract Lcom/kingroot/loader/sdk/service/IKlConnectionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getService(ILandroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public abstract getType(ILandroid/net/Uri;)Ljava/lang/String;
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract talkWithHost(Lcom/kingroot/loader/sdk/KlContext;Landroid/os/Bundle;)Landroid/os/Bundle;
    .param p1    # Lcom/kingroot/loader/sdk/KlContext;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract talkWithPlugin(ILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
