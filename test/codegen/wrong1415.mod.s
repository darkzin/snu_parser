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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v0       <bool> %ebp-25 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $1, %eax                #   2:     assign v0 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_5                  #   3:     goto   5
l_f0_5:
    call    dummyBOOLfunc           #   5:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
    movl    $98, %eax               #   7:     return 98
    jmp     l_f0_exit              
    movl    $97, %eax               #   8:     return 97
    jmp     l_f0_exit              
    movl    $100, %eax              #   9:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_9                  #  10:     goto   9
l_f0_9:
l_f0_16_while_cond:
    movl    $99220, %eax            #  13:     sub    t2 <- 99220, 11605
    movl    $11605, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     add    t3 <- t2, 65659
    movl    $65659, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $60666, %eax            #  15:     if     60666 > t3 goto 17_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_17_while_body     
    jmp     l_f0_15                 #  16:     goto   15
l_f0_17_while_body:
    movl    $33353, %eax            #  18:     if     33353 # 26504 goto 20_if_true
    movl    $26504, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_20_if_true        
    jmp     l_f0_21_if_false        #  19:     goto   21_if_false
l_f0_20_if_true:
    jmp     l_f0_19                 #  21:     goto   19
l_f0_21_if_false:
l_f0_19:
    jmp     l_f0_16_while_cond      #  24:     goto   16_while_cond
l_f0_15:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
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
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 > 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   8:     goto   4
l_f1_8_while_cond:
    jmp     l_f1_10                 #  10:     goto   10
l_f1_10:
    jmp     l_f1_8_while_cond       #  12:     goto   8_while_cond
    jmp     l_f1_5_while_cond       #  13:     goto   5_while_cond
l_f1_4:
l_f1_14_while_cond:
    jmp     l_f1_13                 #  16:     goto   13
    jmp     l_f1_13                 #  17:     goto   13
    jmp     l_f1_13                 #  18:     goto   13
    jmp     l_f1_13                 #  19:     goto   13
    jmp     l_f1_13                 #  20:     goto   13
    jmp     l_f1_13                 #  21:     goto   13
l_f1_23_while_cond:
    jmp     l_f1_22                 #  23:     goto   22
    jmp     l_f1_23_while_cond      #  24:     goto   23_while_cond
l_f1_22:
    jmp     l_f1_14_while_cond      #  26:     goto   14_while_cond
l_f1_13:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 71 of <array 26 of <array 21 of <array 40 of <array 60 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 76 of <array 51 of <array 97 of <array 56 of <array 11 of <char>>>>>>> %ebp+16 ]

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
l_f2_1_while_cond:
    movl    $98, %eax               #   1:     if     98 # 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $93721, %eax            #   4:     if     93721 <= 48955 goto 5
    movl    $48955, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_5                 
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $1, %eax                #   7:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   8:     goto   7
l_f2_6:
    movl    $0, %eax                #  10:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #  12:     return t0
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  13:     goto   1_while_cond
l_f2_0:
l_f2_10_while_cond:
    call    dummyINTfunc            #  16:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     div    t2 <- t1, 56587
    movl    $56587, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     if     t2 > 59991 goto 11_while_body
    movl    $59991, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_11_while_body     
    jmp     l_f2_9                  #  19:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  21:     goto   10_while_cond
l_f2_9:
    call    f1                      #  23:     call   t3 <- f1
    movb    %al, -25(%ebp)         

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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $0, %eax                #   0:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_exit            
l_test_3_while_cond:
    jmp     l_test_exit            
    movl    $1, %eax                #   4:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_9_if_false       #   5:     goto   9_if_false
    jmp     l_test_7                #   6:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_exit            
    jmp     l_test_3_while_cond     #  10:     goto   3_while_cond

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

    # scope: test
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
