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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]

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
    jmp     l_f0_exit              
l_f0_2_while_cond:
    movl    $34410, %eax            #   2:     div    t3 <- 34410, 72284
    movl    $72284, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $96128, %eax            #   3:     if     96128 > t3 goto 3_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    movl    $97, %eax               #   6:     assign v1 <- 97
    movb    %al, 8(%ebp)           
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #   8:     goto   2_while_cond
l_f0_1:
    jmp     l_f0_9_if_false         #  10:     goto   9_if_false
l_f0_11_while_cond:
    movl    $99, %eax               #  12:     if     99 > 98 goto 12_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_12_while_body     
    jmp     l_f0_10                 #  13:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  15:     goto   11_while_cond
l_f0_10:
    call    dummyBOOLfunc           #  17:     call   t4 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f0_7                  #  18:     goto   7
l_f0_9_if_false:
l_f0_7:

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $v1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $v2       <bool> %ebp-18 ]

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
    jmp     l_f1_0                  #   1:     goto   0
    call    dummyBOOLfunc           #   2:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   3:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #   4:     assign v1 <- 98
    movb    %al, -17(%ebp)         
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
l_f1_10_while_cond:
    jmp     l_f1_9                  #   8:     goto   9
    jmp     l_f1_10_while_cond      #   9:     goto   10_while_cond
l_f1_9:
    movl    $0, %eax                #  11:     return 0
    jmp     l_f1_exit              
    movl    $0, %eax                #  12:     assign v2 <- 0
    movb    %al, -18(%ebp)         
    call    dummyCHARfunc           #  13:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  14:     param  0 <- t5
    pushl   %eax                   
    call    WriteChar               #  15:     call   WriteChar
    addl    $4, %esp               
    movl    $1, %eax                #  16:     if     1 # 0 goto 16_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_16_if_true        
    jmp     l_f1_17_if_false        #  17:     goto   17_if_false
l_f1_16_if_true:
    jmp     l_f1_15                 #  19:     goto   15
l_f1_17_if_false:
l_f1_15:
    jmp     l_f1_19                 #  22:     goto   19
l_f1_19:
    jmp     l_f1_6                  #  24:     goto   6
l_f1_6:
    jmp     l_f1_23                 #  26:     goto   23
l_f1_23:
    movl    $1, %eax                #  28:     assign t6 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_25                 #  29:     goto   25
    movl    $0, %eax                #  30:     assign t6 <- 0
    movb    %al, -16(%ebp)         
l_f1_25:
    movzbl  -16(%ebp), %eax         #  32:     return t6
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v1       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $v2       <char> %ebp-26 ]

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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f2_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #   3:     if     99 >= t4 goto 3_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    call    dummyProcedure          #   6:     call   dummyProcedure
    movl    $97, %eax               #   7:     if     97 > 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   8:     goto   8_if_false
l_f2_7_if_true:
    jmp     l_f2_6                  #  10:     goto   6
l_f2_8_if_false:
l_f2_6:
    jmp     l_f2_12_if_false        #  13:     goto   12_if_false
    jmp     l_f2_10                 #  14:     goto   10
l_f2_12_if_false:
l_f2_10:
    call    dummyINTfunc            #  17:     call   t5 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #  19:     goto   2_while_cond
l_f2_1:
l_f2_16_while_cond:
    movl    $52349, %eax            #  22:     if     52349 = 41410 goto 17_while_body
    movl    $41410, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_17_while_body     
    jmp     l_f2_15                 #  23:     goto   15
l_f2_17_while_body:
    movl    $98, %eax               #  25:     if     98 < 99 goto 20_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  26:     goto   21_if_false
l_f2_20_if_true:
    movl    $1, %eax                #  28:     assign v1 <- 1
    movb    %al, -25(%ebp)         
    movl    $99, %eax               #  29:     assign v2 <- 99
    movb    %al, -26(%ebp)         
    jmp     l_f2_19                 #  30:     goto   19
l_f2_21_if_false:
l_f2_19:
    jmp     l_f2_16_while_cond      #  33:     goto   16_while_cond
l_f2_15:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    movl    $98, %eax               #   0:     if     98 <= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    movl    $37614, %eax            #   4:     if     37614 >= 72644 goto 6_while_body
    movl    $72644, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
    movl    $100, %eax              #   9:     if     100 <= 99 goto 9
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_9               
    jmp     l_test_10               #  10:     goto   10
l_test_9:
    movl    $1, %eax                #  12:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_11               #  13:     goto   11
l_test_10:
    movl    $0, %eax                #  15:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_11:
    movzbl  -13(%ebp), %eax         #  17:     assign v0 <- t0
    movb    %al, v0                
    movl    $98, %eax               #  18:     if     98 <= 100 goto 14_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_14_if_true      
    jmp     l_test_15_if_false      #  19:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  21:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_0                #  24:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $76263, %eax            #  29:     div    t1 <- 76263, 49146
    movl    $49146, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  30:     if     t1 = 68368 goto 20_if_true
    movl    $68368, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_20_if_true      
    jmp     l_test_21_if_false      #  31:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_23               #  33:     goto   23
l_test_23:
    jmp     l_test_19               #  35:     goto   19
l_test_21_if_false:
l_test_19:
    call    ReadInt                 #  38:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
