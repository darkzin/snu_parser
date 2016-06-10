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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t9 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   1:     return t9
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     return t10
    jmp     l_f0_exit              
    jmp     l_f0_4                  #   4:     goto   4
    movl    $1, %eax                #   5:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_5                  #   6:     goto   5
l_f0_4:
    movl    $0, %eax                #   8:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f0_5:
    movzbl  -14(%ebp), %eax         #  10:     assign v0 <- t11
    movb    %al, 8(%ebp)           

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t14      <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $2148, %eax             #   1:     sub    t9 <- 2148, 39340
    movl    $39340, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     sub    t10 <- t9, 50638
    movl    $50638, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $41840, %eax            #   3:     sub    t11 <- 41840, 64725
    movl    $64725, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t12 <- t11, 66642
    movl    $66642, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -16(%ebp), %eax         #   5:     if     t10 > t12 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
l_f1_0:
    call    dummyProcedure          #  10:     call   dummyProcedure
    movl    $99, %eax               #  11:     return 99
    jmp     l_f1_exit              
    movl    $0, %eax                #  12:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #  13:     call   t13 <- f0
    addl    $4, %esp               
    movb    %al, -25(%ebp)         
    movl    $1, %eax                #  14:     param  0 <- 1
    pushl   %eax                   
    call    f0                      #  15:     call   t14 <- f0
    addl    $4, %esp               
    movb    %al, -26(%ebp)         
    call    WriteLn                 #  16:     call   WriteLn
l_f1_13_while_cond:
    movl    $99, %eax               #  18:     if     99 < 99 goto 14_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_14_while_body     
    jmp     l_f1_12                 #  19:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  21:     goto   13_while_cond
l_f1_12:
    movl    $99, %eax               #  23:     if     99 > 100 goto 17_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  24:     goto   18_if_false
l_f1_17_if_true:
    jmp     l_f1_16                 #  26:     goto   16
l_f1_18_if_false:
l_f1_16:
    movl    $16589, %eax            #  29:     if     16589 > 45243 goto 21_if_true
    movl    $45243, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_21_if_true        
    jmp     l_f1_22_if_false        #  30:     goto   22_if_false
l_f1_21_if_true:
    jmp     l_f1_20                 #  32:     goto   20
l_f1_22_if_false:
l_f1_20:
    movl    $100, %eax              #  35:     return 100
    jmp     l_f1_exit              
    movl    $70064, %eax            #  36:     if     70064 > 36640 goto 26_if_true
    movl    $36640, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_26_if_true        
    jmp     l_f1_27_if_false        #  37:     goto   27_if_false
l_f1_26_if_true:
    jmp     l_f1_25                 #  39:     goto   25
l_f1_27_if_false:
l_f1_25:
    jmp     l_f1_29                 #  42:     goto   29
l_f1_29:
    jmp     l_f1_5                  #  44:     goto   5
l_f1_5:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t13      <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t14      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $18122, %eax            #   0:     div    t9 <- 18122, 79965
    movl    $79965, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $15353, %eax            #   1:     if     15353 < t9 goto 1
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   9:     assign v0 <- t10
    movb    %al, 8(%ebp)           
    movl    $98, %eax               #  10:     if     98 <= 98 goto 6
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_6                 
    jmp     l_f2_7                  #  11:     goto   7
l_f2_6:
    movl    $1, %eax                #  13:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_8                  #  14:     goto   8
l_f2_7:
    movl    $0, %eax                #  16:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f2_8:
    movzbl  -14(%ebp), %eax         #  18:     return t11
    jmp     l_f2_exit              
    jmp     l_f2_16                 #  19:     goto   16
    jmp     l_f2_16                 #  20:     goto   16
    jmp     l_f2_16                 #  21:     goto   16
    movl    $1, %eax                #  22:     assign t12 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_17                 #  23:     goto   17
l_f2_16:
    movl    $0, %eax                #  25:     assign t12 <- 0
    movb    %al, -15(%ebp)         
l_f2_17:
    movzbl  -15(%ebp), %eax         #  27:     param  0 <- t12
    pushl   %eax                   
    call    f0                      #  28:     call   t13 <- f0
    addl    $4, %esp               
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  29:     if     t13 < 97 goto 11
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_11                
    jmp     l_f2_12                 #  30:     goto   12
l_f2_11:
    movl    $1, %eax                #  32:     assign t14 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_13                 #  33:     goto   13
l_f2_12:
    movl    $0, %eax                #  35:     assign t14 <- 0
    movb    %al, -17(%ebp)         
l_f2_13:
    movzbl  -17(%ebp), %eax         #  37:     return t14
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyProcedure          #   0:     call   dummyProcedure
    jmp     l_test_exit            
    movl    $5278, %eax             #   2:     mul    t0 <- 5278, 77802
    movl    $77802, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     mul    t1 <- t0, 98795
    movl    $98795, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $42257, %eax            #   4:     sub    t2 <- 42257, t1
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $33462, %eax            #   5:     if     33462 <= t2 goto 3_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_3_if_true       
    jmp     l_test_4_if_false       #   6:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_2                #   8:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $54891, %eax            #  11:     mul    t3 <- 54891, 71246
    movl    $71246, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     div    t4 <- t3, 64185
    movl    $64185, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     div    t5 <- t4, 49215
    movl    $49215, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     sub    t6 <- t5, 81319
    movl    $81319, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  15:     sub    t7 <- t6, 20351
    movl    $20351, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  16:     add    t8 <- t7, 4117
    movl    $4117, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  17:     if     t8 >= 96651 goto 7_if_true
    movl    $96651, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_7_if_true       
    jmp     l_test_8_if_false       #  18:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #  20:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
