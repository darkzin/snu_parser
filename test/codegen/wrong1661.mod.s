##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v0       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t1
    jmp     l_f0_exit              
l_f0_2_while_cond:
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   4:     if     99 < t2 goto 3_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_3_while_body      
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_while_body:
    movl    $97, %eax               #   7:     if     97 >= 97 goto 6
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_6                 
    jmp     l_f0_7                  #   8:     goto   7
l_f0_6:
    movl    $1, %eax                #  10:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_8                  #  11:     goto   8
l_f0_7:
    movl    $0, %eax                #  13:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f0_8:
    movzbl  -15(%ebp), %eax         #  15:     assign v0 <- t3
    movb    %al, -16(%ebp)         
    jmp     l_f0_2_while_cond       #  16:     goto   2_while_cond
l_f0_1:
    jmp     l_f0_12_if_false        #  18:     goto   12_if_false
    jmp     l_f0_15_if_false        #  19:     goto   15_if_false
    jmp     l_f0_18_if_false        #  20:     goto   18_if_false
    jmp     l_f0_16                 #  21:     goto   16
l_f0_18_if_false:
l_f0_16:
    movl    $40705, %eax            #  24:     assign v1 <- 40705
    movl    %eax, -20(%ebp)        
    jmp     l_f0_13                 #  25:     goto   13
l_f0_15_if_false:
l_f0_13:
    jmp     l_f0_10                 #  28:     goto   10
l_f0_12_if_false:
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t2       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t3       <bool> %ebp-45 ]
    #    -52(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <char>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t5       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t6       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t7       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t8       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t9       <int> %ebp-72 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 32 of <array 16 of <array 25 of <array 36 of <array 93 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 89 of <array 11 of <array 71 of <array 95 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $60, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $15, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    leal    _str_1, %eax            #   2:     &()    t1 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   4:     call   WriteStr
    addl    $4, %esp               
l_f1_5_while_cond:
    movl    $98, %eax               #   6:     if     98 <= 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_6_while_body      
    jmp     l_f1_4                  #   7:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   9:     goto   5_while_cond
l_f1_4:
    call    dummyINTfunc            #  11:     call   t2 <- dummyINTfunc
    movl    %eax, -44(%ebp)        
    movl    $26097, %eax            #  12:     return 26097
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #  13:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_14                 #  15:     goto   14
    jmp     l_f1_14                 #  16:     goto   14
    jmp     l_f1_15                 #  17:     goto   15
l_f1_14:
    movl    $1, %eax                #  19:     assign t3 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f1_16                 #  20:     goto   16
l_f1_15:
    movl    $0, %eax                #  22:     assign t3 <- 0
    movb    %al, -45(%ebp)         
l_f1_16:
    movl    $1, %eax                #  24:     if     1 # t3 goto 11_if_true
    movzbl  -45(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  25:     goto   12_if_false
l_f1_11_if_true:
l_f1_22_while_cond:
    movl    $52836, %eax            #  28:     if     52836 >= 58231 goto 23_while_body
    movl    $58231, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_23_while_body     
    jmp     l_f1_21                 #  29:     goto   21
l_f1_23_while_body:
    jmp     l_f1_22_while_cond      #  31:     goto   22_while_cond
l_f1_21:
    movl    $67227, %eax            #  33:     if     67227 <= 18130 goto 26_if_true
    movl    $18130, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_26_if_true        
    jmp     l_f1_27_if_false        #  34:     goto   27_if_false
l_f1_26_if_true:
    jmp     l_f1_25                 #  36:     goto   25
l_f1_27_if_false:
l_f1_25:
l_f1_30_while_cond:
    jmp     l_f1_29                 #  40:     goto   29
    jmp     l_f1_30_while_cond      #  41:     goto   30_while_cond
l_f1_29:
    leal    _str_2, %eax            #  43:     &()    t4 <- _str_2
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  44:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  45:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_35_if_false        #  46:     goto   35_if_false
    jmp     l_f1_33                 #  47:     goto   33
l_f1_35_if_false:
l_f1_33:
    movl    $52773, %eax            #  50:     return 52773
    jmp     l_f1_exit              
    jmp     l_f1_10                 #  51:     goto   10
l_f1_12_if_false:
l_f1_10:
    movl    $61333, %eax            #  54:     mul    t5 <- 61333, 6158
    movl    $6158, %ebx            
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  55:     div    t6 <- t5, 90685
    movl    $90685, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  56:     div    t7 <- t6, 92408
    movl    $92408, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  57:     mul    t8 <- t7, 89273
    movl    $89273, %ebx           
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  58:     div    t9 <- t8, 64991
    movl    $64991, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  59:     div    t10 <- t9, 25211
    movl    $25211, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  60:     div    t11 <- t10, 25738
    movl    $25738, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  61:     mul    t12 <- t11, 79191
    movl    $79191, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  62:     mul    t13 <- t12, 31643
    movl    $31643, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  63:     mul    t14 <- t13, 93847
    movl    $93847, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  64:     mul    t15 <- t14, 43019
    movl    $43019, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  65:     return t15
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $60, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 85 of <array 50 of <array 20 of <array 26 of <array 91 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 75 of <array 21 of <array 81 of <array 71 of <bool>>>>>>> %ebp+12 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    call    f0                      #   0:     call   t1 <- f0
    movb    %al, -13(%ebp)         
    jmp     l_f2_2                  #   1:     goto   2
    jmp     l_f2_3                  #   2:     goto   3
    jmp     l_f2_3                  #   3:     goto   3
l_f2_2:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f2_4:
    movzbl  -14(%ebp), %eax         #  10:     assign v2 <- t2
    movb    %al, -16(%ebp)         
    movl    $1, %eax                #  11:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_12                 #  12:     goto   12
    movl    $0, %eax                #  13:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f2_12:
    movzbl  -15(%ebp), %eax         #  15:     return t3
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
_str_2:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
