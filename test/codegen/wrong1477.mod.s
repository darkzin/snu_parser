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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t7
    jmp     l_f0_exit              
l_f0_2_while_cond:
    call    dummyBOOLfunc           #   3:     call   t8 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     if     t8 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   7:     goto   2_while_cond
l_f0_1:
l_f0_5_while_cond:
    jmp     l_f0_6_while_body       #  10:     goto   6_while_body
    jmp     l_f0_4                  #  11:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #  13:     goto   5_while_cond
l_f0_4:

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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t9       <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 21 of <array 45 of <array 15 of <array 27 of <array 95 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 71 of <array 71 of <array 34 of <array 99 of <array 71 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 45 of <array 56 of <array 81 of <array 73 of <array 64 of <char>>>>>>> %ebp+16 ]
    #    -19(%ebp)   1  [ $v4       <char> %ebp-19 ]

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
l_f1_5_while_cond:
    movl    $100, %eax              #   2:     if     100 < 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_6_while_body      
    jmp     l_f1_4                  #   3:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
l_f1_4:
    movl    $100, %eax              #   7:     assign v4 <- 100
    movb    %al, -19(%ebp)         
l_f1_10_while_cond:
    jmp     l_f1_10_while_cond      #   9:     goto   10_while_cond
    call    ReadInt                 #  10:     call   t7 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f1_1_while_cond       #  11:     goto   1_while_cond
    movl    $100, %eax              #  12:     if     100 <= 100 goto 14
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_14                
l_f1_14:
    movl    $1, %eax                #  14:     assign t8 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_16                 #  15:     goto   16
    movl    $0, %eax                #  16:     assign t8 <- 0
    movb    %al, -17(%ebp)         
l_f1_16:
    movzbl  -17(%ebp), %eax         #  18:     return t8
    jmp     l_f1_exit              
l_f1_20_while_cond:
    call    dummyCHARfunc           #  20:     call   t9 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movl    $99, %eax               #  21:     if     99 <= t9 goto 21_while_body
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_21_while_body     
    jmp     l_f1_19                 #  22:     goto   19
l_f1_21_while_body:
    jmp     l_f1_20_while_cond      #  24:     goto   20_while_cond
l_f1_19:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 67 of <array 22 of <array 76 of <array 55 of <array 37 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #    -32(%ebp)   4  [ $v3       <int> %ebp-32 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movl    $65087, %eax            #   1:     mul    t8 <- 65087, 84554
    movl    $84554, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     mul    t9 <- t8, 61929
    movl    $61929, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     div    t10 <- t9, 37988
    movl    $37988, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     assign v3 <- t10
    movl    %eax, -32(%ebp)        
    call    dummyCHARfunc           #   5:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <char> %ebp-25 ]

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
l_test_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    call    dummyBOOLfunc           #   5:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #   8:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   9:     assign v0 <- t2
    movb    %al, v0                
    movl    $0, %eax                #  10:     if     0 = 1 goto 7_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_7_if_true       
    jmp     l_test_8_if_false       #  11:     goto   8_if_false
l_test_7_if_true:
    movl    $100, %eax              #  13:     assign v0 <- 100
    movb    %al, v0                
    movl    $98, %eax               #  14:     assign v0 <- 98
    movb    %al, v0                
    call    dummyCHARfunc           #  15:     call   t3 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    jmp     l_test_6                #  16:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $50713, %eax            #  19:     assign v1 <- 50713
    movl    %eax, v1               
    call    dummyBOOLfunc           #  20:     call   t4 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $43687, %eax            #  21:     div    t5 <- 43687, 57460
    movl    $57460, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     if     t5 >= 41657 goto 16_if_true
    movl    $41657, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_16_if_true      
    jmp     l_test_17_if_false      #  23:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  26:     call   t6 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    jmp     l_test_15               #  27:     goto   15
l_test_17_if_false:
l_test_15:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
