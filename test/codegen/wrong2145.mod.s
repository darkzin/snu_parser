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
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]

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
    jmp     l_f0_3_if_false         #   1:     goto   3_if_false
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   4:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_exit              
    jmp     l_f0_10_if_false        #   6:     goto   10_if_false
    jmp     l_f0_8                  #   7:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_13_if_false        #  10:     goto   13_if_false
    jmp     l_f0_11                 #  11:     goto   11
l_f0_13_if_false:
l_f0_11:
    jmp     l_f0_1                  #  14:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    ReadInt                 #  17:     call   t9 <- ReadInt
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
    #    -13(%ebp)   1  [ $t8       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 84 of <array 62 of <array 56 of <array 54 of <array 58 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t8 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   2:     call   t9 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t13      <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t9       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -19(%ebp)   1  [ $v2       <bool> %ebp-19 ]

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
l_f2_1_while_cond:
    movl    $61589, %eax            #   1:     if     61589 < 16044 goto 2_while_body
    movl    $16044, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $1, %eax                #   4:     if     1 = 0 goto 5
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_5                 
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $1, %eax                #   7:     assign t8 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_7                  #   8:     goto   7
l_f2_6:
    movl    $0, %eax                #  10:     assign t8 <- 0
    movb    %al, -17(%ebp)         
l_f2_7:
    movzbl  -17(%ebp), %eax         #  12:     assign v2 <- t8
    movb    %al, -19(%ebp)         
    movl    $100, %eax              #  13:     assign v1 <- 100
    movb    %al, 8(%ebp)           
    jmp     l_f2_1_while_cond       #  14:     goto   1_while_cond
l_f2_0:
l_f2_11_while_cond:
    call    dummyBOOLfunc           #  17:     call   t9 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  18:     if     t9 = 1 goto 12_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_12_while_body     
    jmp     l_f2_10                 #  19:     goto   10
l_f2_12_while_body:
    movl    $1, %eax                #  21:     if     1 # 1 goto 15_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  22:     goto   16_if_false
l_f2_15_if_true:
    jmp     l_f2_14                 #  24:     goto   14
l_f2_16_if_false:
l_f2_14:
l_f2_19_while_cond:
    movl    $55874, %eax            #  28:     if     55874 < 24638 goto 20_while_body
    movl    $24638, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_20_while_body     
    jmp     l_f2_18                 #  29:     goto   18
l_f2_20_while_body:
    jmp     l_f2_19_while_cond      #  31:     goto   19_while_cond
l_f2_18:
    call    dummyBOOLfunc           #  33:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_11_while_cond      #  34:     goto   11_while_cond
l_f2_10:
    jmp     l_f2_28                 #  36:     goto   28
    jmp     l_f2_28                 #  37:     goto   28
l_f2_28:
    movl    $1, %eax                #  39:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_30                 #  40:     goto   30
    movl    $0, %eax                #  41:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f2_30:
    movl    $30438, %eax            #  43:     if     30438 < 46733 goto 34
    movl    $46733, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_34                
    jmp     l_f2_35                 #  44:     goto   35
l_f2_34:
    movl    $1, %eax                #  46:     assign t12 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_36                 #  47:     goto   36
l_f2_35:
    movl    $0, %eax                #  49:     assign t12 <- 0
    movb    %al, -15(%ebp)         
l_f2_36:
    movzbl  -14(%ebp), %eax         #  51:     if     t11 = t12 goto 24
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_24                
    jmp     l_f2_25                 #  52:     goto   25
l_f2_24:
    movl    $1, %eax                #  54:     assign t13 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_26                 #  55:     goto   26
l_f2_25:
    movl    $0, %eax                #  57:     assign t13 <- 0
    movb    %al, -16(%ebp)         
l_f2_26:
    movzbl  -16(%ebp), %eax         #  59:     assign v2 <- t13
    movb    %al, -19(%ebp)         

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <bool> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $1, %eax                #   0:     if     1 # 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    movl    $90454, %eax            #   5:     assign v0 <- 90454
    movl    %eax, v0               
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_10_if_false      #  10:     goto   10_if_false
    movl    $64779, %eax            #  11:     assign v0 <- 64779
    movl    %eax, v0               
    movl    $67397, %eax            #  12:     if     67397 <= 97890 goto 13_if_true
    movl    $97890, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_13_if_true      
    jmp     l_test_14_if_false      #  13:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  15:     goto   12
l_test_14_if_false:
l_test_12:
    movl    $99, %eax               #  18:     if     99 <= 99 goto 17_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_17_if_true      
    jmp     l_test_18_if_false      #  19:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  21:     goto   16
l_test_18_if_false:
l_test_16:
    call    dummyCHARfunc           #  24:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    ReadInt                 #  25:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
    movl    $1, %eax                #  27:     if     1 = 1 goto 24_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_24_if_true      
    jmp     l_test_25_if_false      #  28:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  30:     goto   23
l_test_25_if_false:
l_test_23:
    movl    $0, %eax                #  33:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_8                #  34:     goto   8
l_test_10_if_false:
l_test_8:
    movl    $99718, %eax            #  37:     add    t3 <- 99718, 92612
    movl    $92612, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  38:     add    t4 <- t3, 30270
    movl    $30270, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  39:     add    t5 <- t4, 37339
    movl    $37339, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  40:     add    t6 <- t5, 79229
    movl    $79229, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  41:     assign v0 <- t6
    movl    %eax, v0               
l_test_30_while_cond:
l_test_33_while_cond:
    jmp     l_test_33_while_cond    #  44:     goto   33_while_cond
    movl    $43270, %eax            #  45:     if     43270 <= 96375 goto 36
    movl    $96375, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_36              
    jmp     l_test_37               #  46:     goto   37
l_test_36:
    movl    $1, %eax                #  48:     assign t7 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_38               #  49:     goto   38
l_test_37:
    movl    $0, %eax                #  51:     assign t7 <- 0
    movb    %al, -37(%ebp)         
l_test_38:
    movzbl  -37(%ebp), %eax         #  53:     assign v1 <- t7
    movb    %al, v1                
    jmp     l_test_30_while_cond    #  54:     goto   30_while_cond

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
