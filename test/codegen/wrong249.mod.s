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
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v2       <char> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $38350, %eax            #   0:     mul    t3 <- 38350, 93092
    movl    $93092, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t4 <- t3, 4798
    movl    $4798, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t5 <- t4, 7085
    movl    $7085, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t6 <- t5, 65398
    movl    $65398, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     return t6
    jmp     l_f0_exit              
l_f0_2_while_cond:
    jmp     l_f0_1                  #   6:     goto   1
    jmp     l_f0_4                  #   7:     goto   4
l_f0_4:
    movl    $98, %eax               #   9:     assign v2 <- 98
    movb    %al, -33(%ebp)         
    jmp     l_f0_2_while_cond       #  10:     goto   2_while_cond
l_f0_1:
    movl    $17163, %eax            #  12:     if     17163 < 93838 goto 9_if_true
    movl    $93838, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  13:     goto   10_if_false
l_f0_9_if_true:
l_f0_13_while_cond:
    jmp     l_f0_12                 #  16:     goto   12
    jmp     l_f0_13_while_cond      #  17:     goto   13_while_cond
l_f0_12:
    jmp     l_f0_15                 #  19:     goto   15
l_f0_15:
    call    dummyINTfunc            #  21:     call   t7 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    $100, %eax              #  22:     assign v2 <- 100
    movb    %al, -33(%ebp)         
    jmp     l_f0_22_if_false        #  23:     goto   22_if_false
    jmp     l_f0_20                 #  24:     goto   20
l_f0_22_if_false:
l_f0_20:
l_f0_24_while_cond:
    movl    $35805, %eax            #  28:     if     35805 <= 87797 goto 25_while_body
    movl    $87797, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_25_while_body     
    jmp     l_f0_23                 #  29:     goto   23
l_f0_25_while_body:
    jmp     l_f0_24_while_cond      #  31:     goto   24_while_cond
l_f0_23:
    jmp     l_f0_8                  #  33:     goto   8
l_f0_10_if_false:
l_f0_8:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t3 < 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #   9:     return t4
    jmp     l_f1_exit              
    movl    $1264, %eax             #  10:     if     1264 >= 30109 goto 6_if_true
    movl    $30109, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  11:     goto   7_if_false
l_f1_6_if_true:
    movl    $95511, %eax            #  13:     assign v2 <- 95511
    movl    %eax, 8(%ebp)          
    jmp     l_f1_12_if_false        #  14:     goto   12_if_false
    jmp     l_f1_10                 #  15:     goto   10
l_f1_12_if_false:
l_f1_10:
    movl    $80155, %eax            #  18:     if     80155 < 58971 goto 14
    movl    $58971, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_14                
    jmp     l_f1_15                 #  19:     goto   15
l_f1_14:
    movl    $1, %eax                #  21:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_16                 #  22:     goto   16
l_f1_15:
    movl    $0, %eax                #  24:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f1_16:
    movzbl  -15(%ebp), %eax         #  26:     return t5
    jmp     l_f1_exit              
    jmp     l_f1_5                  #  27:     goto   5
l_f1_7_if_false:
l_f1_5:
    call    dummyBOOLfunc           #  30:     call   t6 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 10 of <array 9 of <array 4 of <array 6 of <int>>>>>>> %ebp+8 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v4       <char> %ebp-29 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   2:     if     100 = t4 goto 2_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
l_f2_2_if_true:
    movl    $70716, %eax            #   5:     assign v3 <- 70716
    movl    %eax, -28(%ebp)        
l_f2_7_while_cond:
    movl    $100, %eax              #   7:     if     100 < 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_8_while_body      
    jmp     l_f2_6                  #   8:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  10:     goto   7_while_cond
l_f2_6:
    movl    $99, %eax               #  12:     assign v4 <- 99
    movb    %al, -29(%ebp)         
    movl    $74620, %eax            #  13:     return 74620
    jmp     l_f2_exit              
    jmp     l_f2_1                  #  14:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $51615, %eax            #  17:     add    t5 <- 51615, 65069
    movl    $65069, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     add    t6 <- t5, 62729
    movl    $62729, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     return t6
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
    movl    $1, %eax                #   0:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   1:     goto   3
    movl    $0, %eax                #   2:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   4:     assign v0 <- t0
    movb    %al, v0                
    call    dummyCHARfunc           #   5:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   6:     assign v1 <- t1
    movb    %al, v1                
l_test_7_while_cond:
    jmp     l_test_9                #   8:     goto   9
    jmp     l_test_8_while_body     #   9:     goto   8_while_body
l_test_9:
    jmp     l_test_6                #  11:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  13:     goto   7_while_cond
l_test_6:
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyCHARfunc           #  17:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

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
