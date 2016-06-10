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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v0       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $v1       <bool> %ebp-17 ]

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
l_f0_1_while_cond:
    movl    $98, %eax               #   1:     if     98 >= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    call    dummyBOOLfunc           #   4:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   5:     assign v0 <- 99
    movb    %al, -16(%ebp)         
l_f0_7_while_cond:
    movl    $1, %eax                #   7:     if     1 = 0 goto 8_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_8_while_body      
    jmp     l_f0_6                  #   8:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  10:     goto   7_while_cond
l_f0_6:
    movl    $97, %eax               #  12:     if     97 < 98 goto 11_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  13:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  15:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_1_while_cond       #  18:     goto   1_while_cond
l_f0_0:
l_f0_15_while_cond:
    call    dummyCHARfunc           #  21:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  22:     if     t6 < 98 goto 16_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_16_while_body     
    jmp     l_f0_14                 #  23:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  25:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_19                 #  27:     goto   19
    jmp     l_f0_20                 #  28:     goto   20
l_f0_19:
    movl    $1, %eax                #  30:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_21                 #  31:     goto   21
l_f0_20:
    movl    $0, %eax                #  33:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f0_21:
    movzbl  -15(%ebp), %eax         #  35:     assign v1 <- t7
    movb    %al, -17(%ebp)         

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t8       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t9       <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $v0       <char> %ebp-24 ]
    #    -25(%ebp)   1  [ $v1       <bool> %ebp-25 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #   2:     if     1 = 0 goto 6_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   3:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   5:     goto   5
l_f1_7_if_false:
l_f1_5:
l_f1_10_while_cond:
    jmp     l_f1_10_while_cond      #   9:     goto   10_while_cond
    movl    $100, %eax              #  10:     assign v0 <- 100
    movb    %al, -24(%ebp)         
    jmp     l_f1_0                  #  11:     goto   0
l_f1_0:
    call    dummyCHARfunc           #  13:     call   t7 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #  14:     call   t8 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  15:     if     t8 < 99 goto 15_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  16:     goto   16_if_false
l_f1_15_if_true:
    movl    $100, %eax              #  18:     assign v0 <- 100
    movb    %al, -24(%ebp)         
    movl    $49671, %eax            #  19:     if     49671 > 29515 goto 20
    movl    $29515, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_20                
    jmp     l_f1_21                 #  20:     goto   21
l_f1_20:
    movl    $1, %eax                #  22:     assign t9 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f1_22                 #  23:     goto   22
l_f1_21:
    movl    $0, %eax                #  25:     assign t9 <- 0
    movb    %al, -23(%ebp)         
l_f1_22:
    movzbl  -23(%ebp), %eax         #  27:     assign v1 <- t9
    movb    %al, -25(%ebp)         
    jmp     l_f1_24                 #  28:     goto   24
l_f1_24:
    jmp     l_f1_14                 #  30:     goto   14
l_f1_16_if_false:
l_f1_14:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <char> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
l_f2_1_while_cond:
    movl    $99, %eax               #   1:     if     99 < 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $1, %eax                #   4:     return 1
    jmp     l_f2_exit              
    movl    $1, %eax                #   5:     assign v1 <- 1
    movb    %al, 12(%ebp)          
    call    dummyBOOLfunc           #   6:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_9_if_false         #   7:     goto   9_if_false
    jmp     l_f2_7                  #   8:     goto   7
l_f2_9_if_false:
l_f2_7:
l_f2_11_while_cond:
    movl    $56174, %eax            #  12:     if     56174 # 24246 goto 12_while_body
    movl    $24246, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_12_while_body     
    jmp     l_f2_10                 #  13:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  15:     goto   11_while_cond
l_f2_10:
    movl    $0, %eax                #  17:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  18:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_16                 #  20:     goto   16
    call    f0                      #  21:     call   t6 <- f0
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  22:     if     t6 = 1 goto 16
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_16                
    jmp     l_f2_17                 #  23:     goto   17
l_f2_16:
    movl    $1, %eax                #  25:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_18                 #  26:     goto   18
l_f2_17:
    movl    $0, %eax                #  28:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f2_18:
    movzbl  -15(%ebp), %eax         #  30:     return t7
    jmp     l_f2_exit              
    call    f1                      #  31:     call   t8 <- f1
    movb    %al, -16(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
    movl    $74496, %eax            #   0:     mul    t0 <- 74496, 71399
    movl    $71399, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 18463
    movl    $18463, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t2 <- t1, 81863
    movl    $81863, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t3 <- t2, 95564
    movl    $95564, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v0 <- t3
    movl    %eax, v0               
    movl    $99, %eax               #   5:     if     99 # 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_2_if_true       
    jmp     l_test_3_if_false       #   6:     goto   3_if_false
l_test_2_if_true:
    call    f1                      #   8:     call   t4 <- f1
    movb    %al, -29(%ebp)         
    jmp     l_test_1                #   9:     goto   1
l_test_3_if_false:
l_test_1:
l_test_7_while_cond:
    movl    $97976, %eax            #  13:     if     97976 <= 53241 goto 8_while_body
    movl    $53241, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_8_while_body    
    jmp     l_test_8_while_body     #  14:     goto   8_while_body
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  16:     goto   7_while_cond

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
