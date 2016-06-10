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
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -16(%ebp)   4  [ $v2       <int> %ebp-16 ]

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
    movl    $100, %eax              #   0:     if     100 > 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $61534, %eax            #   3:     assign v2 <- 61534
    movl    %eax, -16(%ebp)        
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_6_while_cond:
    jmp     l_f0_5                  #   8:     goto   5
    movl    $32071, %eax            #   9:     assign v2 <- 32071
    movl    %eax, -16(%ebp)        
l_f0_13_while_cond:
    jmp     l_f0_12                 #  11:     goto   12
    jmp     l_f0_13_while_cond      #  12:     goto   13_while_cond
l_f0_12:
    jmp     l_f0_9                  #  14:     goto   9
l_f0_9:
    jmp     l_f0_6_while_cond       #  16:     goto   6_while_cond
l_f0_5:
l_f0_16_while_cond:
    movl    $26465, %eax            #  19:     if     26465 # 92425 goto 17_while_body
    movl    $92425, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_17_while_body     
    jmp     l_f0_15                 #  20:     goto   15
l_f0_17_while_body:
l_f0_20_while_cond:
    movl    $99, %eax               #  23:     if     99 = 100 goto 21_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_21_while_body     
    jmp     l_f0_19                 #  24:     goto   19
l_f0_21_while_body:
    movl    $19427, %eax            #  26:     assign v2 <- 19427
    movl    %eax, -16(%ebp)        
    jmp     l_f0_20_while_cond      #  27:     goto   20_while_cond
l_f0_19:
    jmp     l_f0_16_while_cond      #  29:     goto   16_while_cond
l_f0_15:

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 71 of <array 59 of <array 46 of <array 47 of <array 30 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 45 of <array 4 of <array 24 of <array 58 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 71 of <array 62 of <array 30 of <array 43 of <array 19 of <bool>>>>>>> %ebp+20 ]

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
l_f1_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t2 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    call    WriteLn                 #   7:     call   WriteLn
    call    dummyCHARfunc           #   8:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  10:     call   t4 <- f0
    addl    $4, %esp               
    movb    %al, -15(%ebp)         

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $v1       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
l_f2_1_while_cond:
    jmp     l_f2_6_if_false         #   1:     goto   6_if_false
    jmp     l_f2_4                  #   2:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $99, %eax               #   5:     return 99
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
    jmp     l_f2_10_if_false        #   7:     goto   10_if_false
    call    dummyINTfunc            #   8:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $1, %eax                #   9:     assign v1 <- 1
    movb    %al, -18(%ebp)         
    call    dummyBOOLfunc           #  10:     call   t3 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
l_f2_15_while_cond:
    movl    $99, %eax               #  12:     if     99 < 97 goto 16_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_16_while_body     
    jmp     l_f2_14                 #  13:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  15:     goto   15_while_cond
l_f2_14:
    jmp     l_f2_8                  #  17:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $97805, %eax            #  20:     assign v2 <- 97805
    movl    %eax, -24(%ebp)        

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    call    f2                      #   2:     call   t1 <- f2
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   3:     if     100 <= t1 goto 2_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_2_if_true       
    jmp     l_test_3_if_false       #   4:     goto   3_if_false
l_test_2_if_true:
    movl    $97, %eax               #   6:     if     97 <= 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_6_if_true       
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   9:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            
    jmp     l_test_1                #  13:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $39431, %eax            #  16:     if     39431 = 33692 goto 11_if_true
    movl    $33692, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_11_if_true      
    jmp     l_test_12_if_false      #  17:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_exit            
    movl    $43580, %eax            #  20:     if     43580 <= 59708 goto 16_if_true
    movl    $59708, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_16_if_true      
    jmp     l_test_17_if_false      #  21:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_15               #  23:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_10               #  26:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $98, %eax               #  29:     assign v1 <- 98
    movb    %al, v1                

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
