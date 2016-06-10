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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 3 of <array 7 of <array 7 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 9 of <array 3 of <array 8 of <array 2 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
l_f0_5_while_cond:
    movl    $2161, %eax             #   1:     if     2161 # 13251 goto 6_while_body
    movl    $13251, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_6_while_body      
    jmp     l_f0_4                  #   2:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   4:     goto   5_while_cond
l_f0_4:
    movl    $100, %eax              #   6:     assign v3 <- 100
    movb    %al, 20(%ebp)          
    movl    $99, %eax               #   7:     assign v3 <- 99
    movb    %al, 20(%ebp)          
    call    WriteLn                 #   8:     call   WriteLn
    jmp     l_f0_0                  #   9:     goto   0
l_f0_0:
    call    dummyBOOLfunc           #  11:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $34723, %eax            #  12:     assign v4 <- 34723
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
l_f1_1_while_cond:
    movl    $98, %eax               #   1:     if     98 > 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $97, %eax               #   4:     assign v0 <- 97
    movb    %al, 8(%ebp)           
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
l_f1_6_while_cond:
    jmp     l_f1_7_while_body       #   8:     goto   7_while_body
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  10:     goto   6_while_cond
    movl    $88903, %eax            #  11:     sub    t0 <- 88903, 46097
    movl    $46097, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $64142, %eax            #  12:     if     64142 >= t0 goto 11_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  13:     goto   12_if_false
l_f1_11_if_true:
    call    dummyBOOLfunc           #  15:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_10                 #  16:     goto   10
l_f1_12_if_false:
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t11      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t2       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t3       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t4       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t5       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t6       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t7       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t8       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t9       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $v0       <int> %ebp-64 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $52, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     if     100 = 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_6_if_false         #   3:     goto   6_if_false
    jmp     l_f2_4                  #   4:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $0, %eax                #   7:     return 0
    jmp     l_f2_exit              
l_f2_9_while_cond:
    jmp     l_f2_9_while_cond       #   9:     goto   9_while_cond
    call    dummyINTfunc            #  10:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $70255, %eax            #  11:     assign v0 <- 70255
    movl    %eax, -64(%ebp)        
    jmp     l_f2_0                  #  12:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #  15:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $44830, %eax            #  16:     assign v0 <- 44830
    movl    %eax, -64(%ebp)        
    jmp     l_f2_13                 #  17:     goto   13
l_f2_13:
    movl    $56695, %eax            #  19:     mul    t2 <- 56695, 66018
    movl    $66018, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     div    t3 <- t2, 36714
    movl    $36714, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     div    t4 <- t3, 78878
    movl    $78878, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     mul    t5 <- t4, 20578
    movl    $20578, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     mul    t6 <- t5, 17279
    movl    $17279, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  24:     mul    t7 <- t6, 67658
    movl    $67658, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  25:     div    t8 <- t7, 82585
    movl    $82585, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  26:     div    t9 <- t8, 25271
    movl    $25271, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    $99662, %eax            #  27:     add    t10 <- 99662, 55091
    movl    $55091, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -60(%ebp), %eax         #  28:     if     t9 >= t10 goto 19
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_19                
    jmp     l_f2_20                 #  29:     goto   20
l_f2_19:
    movl    $1, %eax                #  31:     assign t11 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_21                 #  32:     goto   21
l_f2_20:
    movl    $0, %eax                #  34:     assign t11 <- 0
    movb    %al, -25(%ebp)         
l_f2_21:
    movzbl  -25(%ebp), %eax         #  36:     return t11
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $52, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_test_1_while_cond:
    jmp     l_test_5                #   1:     goto   5
    jmp     l_test_2_while_body     #   2:     goto   2_while_body
l_test_5:
    jmp     l_test_2_while_body     #   4:     goto   2_while_body
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_9_while_cond:
    jmp     l_test_14               #   8:     goto   14
    jmp     l_test_14               #   9:     goto   14
l_test_14:
    jmp     l_test_10_while_body    #  11:     goto   10_while_body
    jmp     l_test_10_while_body    #  12:     goto   10_while_body
    jmp     l_test_8                #  13:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  15:     goto   9_while_cond
l_test_8:
    movl    $98, %eax               #  17:     if     98 < 97 goto 23_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_23_if_true      
    jmp     l_test_24_if_false      #  18:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_28_if_false      #  20:     goto   28_if_false
    jmp     l_test_26               #  21:     goto   26
l_test_28_if_false:
l_test_26:
    jmp     l_test_29               #  24:     goto   29
l_test_29:
    jmp     l_test_22               #  26:     goto   22
l_test_24_if_false:
l_test_22:

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
