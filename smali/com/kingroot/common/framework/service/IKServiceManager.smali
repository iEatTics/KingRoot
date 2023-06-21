.class public interface abstract Lcom/kingroot/common/framework/service/IKServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/framework/service/IKServiceManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract bindService(Landroid/content/Intent;Lcom/kingroot/common/framework/service/IServiceConnection;)V
.end method

.method public abstract startService(Landroid/content/Intent;)V
.end method

.method public abstract stopService(Landroid/content/Intent;)V
.end method

.method public abstract unbindService(Ljava/lang/String;)V
.end method
