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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 2 of <array 2 of <array 9 of <array 6 of <char>>>>>>> %ebp+8 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v2       <char> %ebp-22 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t4 < 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #   9:     assign v1 <- t5
    movb    %al, -21(%ebp)         
    movl    $11851, %eax            #  10:     if     11851 >= 25244 goto 6_if_true
    movl    $25244, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  11:     goto   7_if_false
l_f0_6_if_true:
    movl    $64769, %eax            #  13:     return 64769
    jmp     l_f0_exit              
    movl    $1, %eax                #  14:     if     1 = 1 goto 11_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  15:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  17:     goto   10
l_f0_12_if_false:
l_f0_10:
    movl    $97, %eax               #  20:     assign v2 <- 97
    movb    %al, -22(%ebp)         
    jmp     l_f0_5                  #  21:     goto   5
l_f0_7_if_false:
l_f0_5:
    call    dummyINTfunc            #  24:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]

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
l_f1_4_while_cond:
    movl    $65850, %eax            #   1:     if     65850 # 51457 goto 5_while_body
    movl    $51457, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_5_while_body      
    jmp     l_f1_3                  #   2:     goto   3
l_f1_5_while_body:
    movl    $97, %eax               #   4:     assign v0 <- 97
    movb    %al, -14(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_4_while_cond       #   6:     goto   4_while_cond
l_f1_3:
    jmp     l_f1_0                  #   8:     goto   0
l_f1_0:
    movl    $100, %eax              #  10:     if     100 <= 100 goto 10
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_10                
    jmp     l_f1_11                 #  11:     goto   11
l_f1_10:
    movl    $1, %eax                #  13:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_12                 #  14:     goto   12
l_f1_11:
    movl    $0, %eax                #  16:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f1_12:
    movzbl  -13(%ebp), %eax         #  18:     assign v1 <- t4
    movb    %al, -15(%ebp)         
l_f1_15_while_cond:
    jmp     l_f1_16_while_body      #  20:     goto   16_while_body
    jmp     l_f1_16_while_body      #  21:     goto   16_while_body
    jmp     l_f1_16_while_body      #  22:     goto   16_while_body
    jmp     l_f1_14                 #  23:     goto   14
    jmp     l_f1_14                 #  24:     goto   14
    jmp     l_f1_14                 #  25:     goto   14
    jmp     l_f1_14                 #  26:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  28:     goto   15_while_cond
l_f1_14:

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
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 2 of <array 2 of <array 2 of <array 9 of <array 6 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <bool> %ebp-21 ]
    #   -480(%ebp)  456  [ $v1       <array 2 of <array 2 of <array 2 of <array 9 of <array 6 of <char>>>>>> %ebp-480 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $468, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $117, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-480(%ebp)           # local array 'v1': 5 dimensions
    movl    $2,-476(%ebp)           #   dimension 1: 2 elements
    movl    $2,-472(%ebp)           #   dimension 2: 2 elements
    movl    $2,-468(%ebp)           #   dimension 3: 2 elements
    movl    $9,-464(%ebp)           #   dimension 4: 9 elements
    movl    $6,-460(%ebp)           #   dimension 5: 6 elements

    # function body
    movl    $0, %eax                #   0:     assign v0 <- 0
    movb    %al, -21(%ebp)         
    call    f1                      #   1:     call   f1
    leal    -480(%ebp), %eax        #   2:     &()    t4 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   4:     call   t5 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        

l_f2_exit:
    # epilogue
    addl    $468, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    jmp     l_test_6                #   2:     goto   6
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_7                #   4:     goto   7
l_test_6:
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_7:
    movzbl  -14(%ebp), %eax         #   8:     if     t1 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #   9:     goto   1
l_test_3_while_body:
    movl    $0, %eax                #  11:     if     0 # 0 goto 11_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_11_if_true      
    jmp     l_test_12_if_false      #  12:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  14:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_2_while_cond     #  17:     goto   2_while_cond
l_test_1:
    call    dummyINTfunc            #  19:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $67409, %eax            #  20:     if     67409 <= 9299 goto 16_if_true
    movl    $9299, %ebx            
    cmpl    %ebx, %eax             
    jle     l_test_16_if_true      
    jmp     l_test_17_if_false      #  21:     goto   17_if_false
l_test_16_if_true:
    movl    $93116, %eax            #  23:     if     93116 >= 36588 goto 20
    movl    $36588, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_20              
    jmp     l_test_21               #  24:     goto   21
l_test_20:
    movl    $1, %eax                #  26:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_22               #  27:     goto   22
l_test_21:
    movl    $0, %eax                #  29:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_test_22:
    movzbl  -21(%ebp), %eax         #  31:     assign v0 <- t3
    movb    %al, v0                
    movl    $85489, %eax            #  32:     param  0 <- 85489
    pushl   %eax                   
    call    WriteInt                #  33:     call   WriteInt
    addl    $4, %esp               
l_test_26_while_cond:
    movl    $98569, %eax            #  35:     if     98569 <= 72674 goto 27_while_body
    movl    $72674, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_27_while_body   
    jmp     l_test_25               #  36:     goto   25
l_test_27_while_body:
    jmp     l_test_26_while_cond    #  38:     goto   26_while_cond
l_test_25:
    movl    $0, %eax                #  40:     if     0 # 1 goto 30_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_30_if_true      
    jmp     l_test_31_if_false      #  41:     goto   31_if_false
l_test_30_if_true:
    jmp     l_test_29               #  43:     goto   29
l_test_31_if_false:
l_test_29:
    jmp     l_test_15               #  46:     goto   15
l_test_17_if_false:
l_test_15:
l_test_34_while_cond:
    jmp     l_test_35_while_body    #  50:     goto   35_while_body
    jmp     l_test_35_while_body    #  51:     goto   35_while_body
l_test_35_while_body:
    jmp     l_test_34_while_cond    #  53:     goto   34_while_cond
    jmp     l_test_41               #  54:     goto   41
l_test_41:
    jmp     l_test_38               #  56:     goto   38
l_test_38:

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
