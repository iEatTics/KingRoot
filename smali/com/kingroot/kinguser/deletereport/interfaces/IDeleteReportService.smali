.class public interface abstract Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;,
        Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Stub;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final HOOK_FUNCTION_BLOCK_OR_DISABLE_PACKAGE:I = 0x2

.field public static final HOOK_FUNCTION_DELETE_PACKAGE:I = 0x0

.field public static final HOOK_FUNCTION_DISABLE_PACKAGE:I = 0x1

.field public static final MAGIC_NUMBER:I = 0x1332d92

.field public static final TRANSACTION_addProtectedPackage:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRANSACTION_hookFunction:I = 0x8

.field public static final TRANSACTION_isProtectedPackage:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRANSACTION_isServiceEnable:I = 0x2

.field public static final TRANSACTION_onClientDeleted:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRANSACTION_removeProtectedPackage:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRANSACTION_setLogEnable:I = 0x4

.field public static final TRANSACTION_setServiceEnable:I = 0x1

.field public static final TRANSACTION_syncMonitorPackages:I = 0xa

.field public static final TRANSACTION_syncProtectPackages:I = 0x9


# virtual methods
.method public abstract addProtectedPackage(Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hookFunction(IZ)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isProtectedPackage(Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isServiceEnable()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onClientPackageDeleted(IILjava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeProtectedPackage(Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setLogEnable(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setServiceEnable(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract syncMonitorPackages(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract syncProtectPackages(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
